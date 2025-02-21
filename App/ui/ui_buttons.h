#ifndef _UI_BUTTONS_H
#define _UI_BUTTONS_H

#include "ui_menu.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    bool button1Enabled;
    const char *button1Text;
    bool button2Enabled;
    const char *button2Text;
    bool button3Enabled;
    const char *button3Text;
} ui_button_text_t;

void ui_handle_updateButtons(ui_menu_state_e buttonState);

#ifdef __cplusplus
} /*extern "C"*/
#endif

#endif
