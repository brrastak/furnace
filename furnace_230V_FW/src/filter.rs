//! Digital filter implementation.


pub struct Filter {
    prev_y: i32,
}

impl Filter {
    
    pub fn new(init_y: i32) -> Self {

        Self { prev_y: init_y }
    }

    pub fn filtered(&mut self, x: i32) -> i32 {

        let a0 = 680;
        let b1 = 320;

        let y = (a0 * x) / 1000 + (b1 * self.prev_y) / 1000;
        self.prev_y = y;

        y
    }
}