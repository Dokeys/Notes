# BITMANIPULATION IN C

## Code Examples

Verschiedene Bits setzen, löschen, toggeln und überprüfen, so wie es oft mit Mikrocontroller Register gemacht wird.

```c
#define PIN5 5

void do_bit_stuff() {
    uint8_t io_register = 0x00;

    // set bit
    io_register |= (1<<PIN5);
    // clear bit
    io_register &= ~(1<<PIN5);
    // toggle bit
    io_register ^= (1<<PIN5);
    // check pin state
    if( ( io_register & ( 1 << PIN5 ) ) != 0 )
        cout << "Button on pin 5 pressed" << endl;

}
```

Bits in Binärform ausgeben

```c
void print_register(uint8_t x) {
  for (int i = 7; i >= 0; i--) {
    printf("%d", (x >> i) & 1);
  }
}
```

Definition für bessere Lesbarkeit

```c
#define SET_BIT(REGISTER, BIT) REGISTER |= (1<<BIT)
```