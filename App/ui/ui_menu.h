#ifndef _UI_MENU_H
#define _UI_MENU_H

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    UI_MAIN_MENU = 0,
    UI_MESSAGE_WINDOW,
    UI_GNSS_WINDOW,
    UI_SETTINGS_WINDOW,
    UI_KEYBOARD,
    UI_MAX_STATES
} ui_menu_state_e;
    
void ui_switchMenuState(ui_menu_state_e state);

#ifdef __cplusplus
} /*extern "C"*/
#endif

#endif
