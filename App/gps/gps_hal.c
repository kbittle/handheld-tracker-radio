#include "gps_hal.h"

GPS_PowerControl_e current_pwr_state = GPS_OFF;

void GPS_HAL_PowerControl(GPS_PowerControl_e ctrl)
{
    switch (ctrl)
    {
        case GPS_OFF:
        {
            //digitalWrite(GNSS_ON_OFF, LOW);
//            digitalWrite(GNSS_PWR_CTRL, HIGH); // LOW is ON
//            digitalWrite(GNSS_BKUP_PWR_CTRL, HIGH); // LOW is ON
            break;
        }

        case GPS_LOW_POWER:
        {
            break;
        }

        case GPS_FULL_PWR:
        {
//            digitalWrite(GNSS_BKUP_PWR_CTRL, LOW); // LOW is ON
//            digitalWrite(GNSS_PWR_CTRL, LOW); // LOW is ON
            // delay(1);
            // digitalWrite(GNSS_ON_OFF, LOW);
            // delay(1);
            // digitalWrite(GNSS_ON_OFF, HIGH);
            break;
        }

        default:
        {
            break;
        }
    }

    current_pwr_state = ctrl;
}

uint32_t GPS_HAL_Available(void)
{
    return 0;//gnssSerial.available();
}

uint32_t GPS_HAL_Read(void)
{
    return 0;//gnssSerial.read();
}

uint32_t GPS_HAL_GetMilliseconds(void)
{
	return 0;
}
