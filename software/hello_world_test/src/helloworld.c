/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "emperor_gpio.h"
#include "emperor_uart.h"


int main()
{
    Xil_DCacheDisable();
    init_platform();

    uart_init(115200);
    
    put_byte('S');
    // put_byte('A');

    while (1) {
        // gpio_write(GPIO_LED_0, 1);
        // for (int i = 0; i < 11999999; i++) {}
        // gpio_write(GPIO_LED_0, 0);
        // gpio_write(GPIO_LED_1, 1);
        // for (int i = 0; i < 11999999; i++) {}
        // gpio_write(GPIO_LED_1, 0);
        // gpio_write(GPIO_LED_2, 1);
        // for (int i = 0; i < 11999999; i++) {}
        // gpio_write(GPIO_LED_2, 0);
        // gpio_write(GPIO_LED_3, 1);
        // for (int i = 0; i < 11999999; i++) {}
        // gpio_write(GPIO_LED_3, 0);
    }

    cleanup_platform();
    return 0;
}
