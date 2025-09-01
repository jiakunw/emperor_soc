// emperor_print.c
#include "emperor_print.h"
#include "emperor_uart.h"
#include <stdarg.h>

static inline void tx_char(char c) {
    if (c == '\n') { put_byte('\r'); put_byte('\n'); }
    else           { put_byte((uint8_t)c); }
}

static inline char hex_digit(uint8_t v) {
    return (v < 10) ? (char)('0' + v) : (char)('A' + (v - 10));
}

void print_init(uint32_t baud) { uart_init(baud); }

void print_char(char c) { put_byte((uint8_t)c); }

void print_str(const char *s) {
    if (!s) return;
    while (*s) print_char(*s++);
}

static void print_udec(uint32_t v) {
    char buf[10]; // 0..4294967295
    int i = 0;
    if (v == 0) { print_char('0'); return; }
    while (v && i < (int)sizeof(buf)) { buf[i++] = '0' + (v % 10); v /= 10; }
    while (i--) print_char(buf[i]);
}

void print_dec(uint32_t v) { print_udec(v); }

void print_hex(uint32_t v) {
    print_str("0x");
    for (int i = 28; i >= 0; i -= 4)
        print_char(hex_digit((v >> i) & 0xF));
}

void print_hex_byte(uint8_t v) {
    print_str("0x");
    print_char(hex_digit((v >> 4) & 0xF));
    print_char(hex_digit(v & 0xF));
}

int print(const char *fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    int count = 0;

    while (*fmt) {
        if (*fmt != '%') { tx_char(*fmt++); ++count; continue; }
        ++fmt;  // skip '%'

        int width = 0;
        char pad = ' ';
        if (*fmt == '0') { pad = '0'; ++fmt; }
        while (*fmt >= '0' && *fmt <= '9') {
            width = width * 10 + (*fmt - '0'); ++fmt;
        }

        switch (*fmt) {
        case '%': print_char('%'); ++count; break;
        case 'c': { int c = va_arg(ap, int); print_char((char)c); ++count; } break;
        case 's': { const char* s = va_arg(ap, const char*); 
                    if (!s) s = "(null)";
                    while (*s) { print_char(*s++); ++count; } } break;
        case 'd': { int v = va_arg(ap, int);
                    if (v < 0) { print_char('-'); ++count; v = -v; }
                    // fall through to %u
                    uint32_t uv = (uint32_t)v;
                    char tmp[11]; int i=0;
                    if (uv==0) tmp[i++]='0';
                    while (uv) { tmp[i++] = '0' + (uv % 10); uv/=10; }
                    int padn = width - i;
                    while (padn-- > 0) { print_char(pad); ++count; }
                    while (i--) { print_char(tmp[i]); ++count; }
                  } break;
        case 'u': { uint32_t v = va_arg(ap, uint32_t);
                    char tmp[10]; int i=0;
                    if (v==0) tmp[i++]='0';
                    while (v) { tmp[i++] = '0' + (v % 10); v/=10; }
                    int padn = width - i;
                    while (padn-- > 0) { print_char(pad); ++count; }
                    while (i--) { print_char(tmp[i]); ++count; }
                  } break;
        case 'x': { uint32_t v = va_arg(ap, uint32_t);
                    char tmp[8]; int i=0;
                    if (v==0) tmp[i++]='0';
                    while (v && i < 8) { tmp[i++] = hex_digit(v & 0xF); v >>= 4; }
                    int padn = width - i;
                    while (padn-- > 0) { print_char(pad); ++count; }
                    while (i--) { print_char(tmp[i]); ++count; }
                  } break;
        default:
            // unsupported format
            print_char('%'); print_char(*fmt);
            count += 2;
            break;
        }
        ++fmt;
    }
    va_end(ap);
    return count;
}
