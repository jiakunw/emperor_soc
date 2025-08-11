// emperor_gpio.c
#include "emperor_gpio.h"

void gpio_write(output_port port, uint32_t data) {
    struct gpio_reg_map *gpio = GPIO_BASE;
    switch (port) {
        case GPIO_LED_0:
            gpio->led_0 = data;
            break;
        case GPIO_LED_1:
            gpio->led_1 = data;
            break;
        case GPIO_LED_2:
            gpio->led_2 = data;
            break;
        case GPIO_LED_3:
            gpio->led_3 = data;
            break;
        default:
            break;
    }
    return;
}

uint32_t gpio_read(input_port port) {
    struct gpio_reg_map *gpio = GPIO_BASE;
    uint32_t read_data = 0;
    switch (port) {
        case GPIO_SW_N:
            read_data = gpio->sw_n;
            break;
        case GPIO_SW_E:
            read_data = gpio->sw_e;
            break;
        case GPIO_SW_S:
            read_data = gpio->sw_s;
            break;
        case GPIO_SW_W:
            read_data = gpio->sw_w;
            break;
        case GPIO_SW_C:
            read_data = gpio->sw_c;
            break;
        case GPIO_DIP_SW0:
            read_data = gpio->sw_dip_sw0;
            break;
        case GPIO_DIP_SW1:
            read_data = gpio->sw_dip_sw1;
            break;
        case GPIO_DIP_SW2:
            read_data = gpio->sw_dip_sw2;
            break;
        case GPIO_DIP_SW3:
            read_data = gpio->sw_dip_sw3;
            break;
        default:
            break;
    }
    return read_data;
}
