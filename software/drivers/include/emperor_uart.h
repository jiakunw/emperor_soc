// emperor_uart.h
#ifndef EMPEROR_UART_H
#define EMPEROR_UART_H

#include <stdint.h>

struct uart_reg_map {
    volatile uint32_t rx_reg;
    volatile uint32_t tx_reg;
    volatile uint32_t dvsr_reg;
    volatile uint32_t ctrl_reg;
    volatile uint32_t status_reg;
};

#define UART_BASE (struct uart_reg_map *) 0x46000200

void set_baud_rate(uint32_t baud);

void uart_init(uint32_t baud);

void put_byte(char c);

char get_byte();

void clear_rx();

void clear_tx();

uint32_t get_status();

uint32_t rx_empty();

uint32_t tx_full();

#endif // EMPEROR_GPIO_H