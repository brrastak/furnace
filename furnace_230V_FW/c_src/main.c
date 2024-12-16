
// Application itself: rust code -> wasm -> c code
extern void app(void);

int main(void) {

    app();

    return 0;
}
