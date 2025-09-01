// emperor_print.h
#ifndef EMPEROR_PRINT_H
#define EMPEROR_PRINT_H

#include <stdint.h>
#include <stdarg.h>

void print_init(uint32_t baud);

int print(const char *format, ...);

#endif /* EMPEROR_PRINT_H */