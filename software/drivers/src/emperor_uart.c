// emperor_uart.c
#include "emperor_uart.h"
#include "io_map.h"

void set_baud_rate(uint32_t baud) {
    struct uart_reg_map *uart = UART_BASE;

    uint32_t dvsr = SYS_CLK_FREQ / 16 / baud - 1;
    uart->dvsr_reg = dvsr;
}

void uart_init(uint32_t baud) {
    set_baud_rate(baud);
}

uint32_t get_status() {
    struct uart_reg_map *uart = UART_BASE;
    return uart->status_reg;
}

uint32_t tx_full() {
    uint32_t status = get_status();
    return (status >> 3) & 1;
}

uint32_t rx_empty() {
    uint32_t status = get_status();
    return !(status & 1);
}

void put_byte(char c) {
    struct uart_reg_map *uart = UART_BASE;
    
    while (tx_full()) {}
    uart->tx_reg = (uint32_t)c;
}

char get_byte() {
    struct uart_reg_map *uart = UART_BASE;

    while (rx_empty()) {}
    return (char)(uart->rx_reg);
}

void clear_rx() {
    struct uart_reg_map *uart = UART_BASE;

    rx->ctrl_reg |= 1;
    rx->ctrl_reg &= 2;
}

void clear_tx() {
    struct uart_reg_map *uart = UART_BASE;

    rx->ctrl_reg |= 2;
    rx->ctrl_reg &= 1;
}
