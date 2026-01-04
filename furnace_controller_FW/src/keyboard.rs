//! Control of matrix keyboard
use core::mem::take;
pub use heapless::index_set::FnvIndexSet;
use stm32f1xx_hal as hal;
use hal::gpio::*;


pub type KeySet = FnvIndexSet<Key, 32>;

// Direction keys
#[derive(Copy, Clone, Eq, Hash, PartialEq)]
pub enum Direction {
    Left,
    Right,
    Up,
    Down,
}

#[derive(Copy, Clone, Eq, Hash, PartialEq)]
pub enum Key {
    Function(u8),
    Number(u8),
    Direction(Direction),
    Asterisk,
    Sharp,
    Enter,
    Escape,
}

/// Number of columns and rows in a keyboard
const COL_NUM: usize = 4;
const ROW_NUM: usize = 5;

pub struct Keyboard {
    rows: [ErasedPin<Input>; ROW_NUM],
    cols: [ErasedPin<Output<OpenDrain>>; COL_NUM],
    were_pressed: KeySet,
    col_index: usize,
    prev_state: [[bool; COL_NUM]; ROW_NUM],
}

impl Keyboard {
    
    pub fn new(rows: [ErasedPin<Input>; 5], cols: [ErasedPin<Output<OpenDrain>>; 4]) -> Self {
        let empty: FnvIndexSet<Key, 32> = FnvIndexSet::new();
        let init_state = [[false; COL_NUM]; ROW_NUM];
        Keyboard {rows, cols, were_pressed: empty, col_index: 0, prev_state: init_state}
    }

    /// Should be called periodically (i.e. every 1ms)
    /// Better the way full cycle is equal to 20 ms (for debouncing)
    pub fn proceed(&mut self) {

        for row in 0..self.rows.len() {
            let read_pin = &mut self.rows[row];
            // Active low
            let state = read_pin.is_low();
            // Not active -> active
            if self.prev_state[row][self.col_index] == false && state == true {
                self.were_pressed.insert(get_key(row, self.col_index)).ok();
            }
            self.prev_state[row][self.col_index] = state;
        }

        // Release selection
        let select_pin = &mut self.cols[self.col_index];
        select_pin.set_high();

        // Select column for next read
        self.col_index += 1;
        self.col_index %= self.cols.len();
        let select_pin = &mut self.cols[self.col_index];
        select_pin.set_low();
    }

    /// Returns a set of keys that were pressed; the "pressed" state is cleared
    pub fn get_pressed(&mut self) -> KeySet {
        take(&mut self.were_pressed)
    }
}

/// Return a key that corresponds to the row and column pair
fn get_key(row: usize, col: usize) -> Key {
    // Keyboard layout
    let keys: [[Key; COL_NUM]; ROW_NUM] = [
        [Key::Function(1), Key::Function(2), Key::Sharp, Key::Asterisk],
        [Key::Number(1), Key::Number(2), Key::Number(3), Key::Direction(Direction::Up)],
        [Key::Number(4), Key::Number(5), Key::Number(6), Key::Direction(Direction::Down)],
        [Key::Number(7), Key::Number(8), Key::Number(9), Key::Escape],
        [Key::Direction(Direction::Left), Key::Number(0), Key::Direction(Direction::Right), Key::Enter]
    ];
    keys[row][col]
}
