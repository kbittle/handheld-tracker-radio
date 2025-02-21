#ifndef __GPS_HAL_H__
#define __GPS_HAL_H__

#include <stdint.h>

typedef enum
{
    GPS_FULL_PWR = 0,
    GPS_LOW_POWER,
    GPS_OFF
} GPS_PowerControl_e;

void GPS_HAL_PowerControl(GPS_PowerControl_e ctrl);

uint32_t GPS_HAL_Available(void);

uint32_t GPS_HAL_Read(void);

uint32_t GPS_HAL_GetMilliseconds(void);

#endif
