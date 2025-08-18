// emperor_print.c
#include "emperor_print.h"
#include "emperor_uart.h"
#include <stdarg.h>

void print_init(uint32_t baud) {
    uart_init(baud);
}

void print_char(char c) {
    put_byte(c);
}

void print_str(const char *str) {
    while (*str) {
        print_char(*str++);
    }
}

void print_dec(uint32_t val) {
    char buffer[10]; // Enough for 32-bit decimal
    char *ptr = buffer + sizeof(buffer) - 1;
    *ptr = '\0';
    
    if (val == 0) {
        print_char('0');
        return;
    }
    
    while (val != 0) {
        *--ptr = '0' + (val % 10); // last digit of val
        val /= 10;
    }
    
    print_str(ptr);
}

void print_hex(uint32_t val) {
    print_str("0x");
    for (int i = 28; i >= 0; i -= 4) {
        uint8_t nibble = (val >> i) & 0xF;
        print_char(nibble < 10 ? '0' + nibble : 'A' + nibble - 10);
    }
}

void print_hex_byte(uint8_t val) {
    print_str("0x");
    uint8_t nibble = (val >> 4) & 0xF;
    print_char(nibble < 10 ? '0' + nibble : 'A' + nibble - 10);
    nibble = val & 0xF;
    print_char(nibble < 10 ? '0' + nibble : 'A' + nibble - 10);
}

void printf(const char *format, ...) {
    va_list args;
    va_start(args, format); // initialize multiple args
    
    while (*format) {
        if (*format == '%') {
            format++;
            switch (*format) {
                case 'c':
                    print_char(va_arg(args, int)); // va_arg parse next argument
                    break;
                case 's':
                    print_str(va_arg(args, char*));
                    break;
                case 'd':
                    print_dec(va_arg(args, uint32_t));
                    break;
                case 'x':
                    print_hex(va_arg(args, uint32_t));
                    break;
                case 'b':
                    print_hex_byte(va_arg(args, uint32_t));
                    break;
                case '%':
                    print_char('%');
                    break;
                default:
                    print_char('%');
                    print_char(*format);
                    break;
            }
        } else {
            print_char(*format);
        }
        format++;
    }
    
    va_end(args);   // clear multi arg data structure
}