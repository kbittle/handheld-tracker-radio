#ifndef __APP_MAIN_H_
#define __APP_MAIN_H_

#include "cmsis_os.h"
#include "gps.h"

#include <stdbool.h>

// Constants
// TODO - find a better spot for these
#define PI 3.14159265358979323846
#define TAU (2.0 * PI)

typedef enum {
	NO_INPUT = 0,
	USER_BUTTON1,
	USER_BUTTON2,
	USER_BUTTON3,
} application_event_e;

// Main application
void main_app_setup(void);
void main_app_update(void);

// UI application
void ui_app_setup(void);
void ui_app_update(void);
void ui_handle_extiEvent(application_event_e event);

// GNSS application
void gnss_app_setup(void);
void gnss_app_update(void);
void gnss_app_getFixData(GPS_positionData_t *pos);

#endif
