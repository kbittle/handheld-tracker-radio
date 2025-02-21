#ifndef __LOGGING_H_
#define __LOGGING_H_

#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdarg.h>

void DebugLogPrintf(const char *function, const char *format, ...);

#endif
