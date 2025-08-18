// emperor_print.h
#define PRINT_H

#include <stdarg.h>

void print_init(uint32_t baud);

void print_char(char c);

void print_str(const char *str);

void print_dec(uint32_t val);

void print_hex(uint32_t val);

void print_hex_byte(uint8_t val);

void printf(const char *format, ...);

#endif // PRINT_H