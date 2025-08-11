// emperor_gpio.h
#ifndef EMPEROR_GPIO_H
#define EMPEROR_GPIO_H

#include <stdint.h>

struct gpio_reg_map {
    volatile uint32_t led_0;
    volatile uint32_t led_1;
    volatile uint32_t led_2;
    volatile uint32_t led_3;
    volatile uint32_t sw_n;
    volatile uint32_t sw_e;
    volatile uint32_t sw_s;
    volatile uint32_t sw_w;
    volatile uint32_t sw_c;
    volatile uint32_t sw_dip_sw0;
    volatile uint32_t sw_dip_sw1;
    volatile uint32_t sw_dip_sw2;
    volatile uint32_t sw_dip_sw3;
};

#define GPIO_BASE (struct gpio_reg_map *) 0x46000100

typedef enum {
    GPIO_LED_0 = 0,
    GPIO_LED_1 = 1,
    GPIO_LED_2 = 2,
    GPIO_LED_3 = 3
} output_port;

typedef enum {
    GPIO_SW_N = 0,
    GPIO_SW_E = 1,
    GPIO_SW_S = 2,
    GPIO_SW_W = 3,
    GPIO_SW_C = 4,
    GPIO_DIP_SW0 = 5,
    GPIO_DIP_SW1 = 6,
    GPIO_DIP_SW2 = 7,
    GPIO_DIP_SW3 = 8
} input_port;

void gpio_write(output_port port, uint32_t data);

uint32_t gpio_read(input_port port);

#endif // EMPEROR_GPIO_H