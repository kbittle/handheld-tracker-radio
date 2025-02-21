#include "app.h"
#include "ui.h"
#include "ui_buttons.h"
#include "ui_menu.h"

static ui_button_text_t buttonsStates[UI_MAX_STATES] = {
        {true, "Select", true, "Left", true, "Right"}, // UI_MAIN_MENU
        {false, NULL, false, NULL, true, "Back"}, // UI_MESSAGE_WINDOW
        {false, NULL, false, NULL, true, "Back"}, // UI_GNSS_WINDOW
        {false, NULL, false, NULL, true, "Back"}, // UI_SETTINGS_WINDOW
        {true, "<", true, ">", true, "Back"}, // UI_KEYBOARD
};

void ui_handle_updateButtons(ui_menu_state_e buttonState)
{
    if (buttonsStates[buttonState].button1Enabled)
    {
        // Un-hide button 1
        if (lv_obj_has_flag(ui_textButton1Container, LV_OBJ_FLAG_HIDDEN)) {
            lv_obj_remove_flag(ui_textButton1Container, LV_OBJ_FLAG_HIDDEN);
        }
        // Set label text
        lv_label_set_text(ui_textButton1Label, buttonsStates[buttonState].button1Text);
    }
    else
    {
        lv_obj_add_flag(ui_textButton1Container, LV_OBJ_FLAG_HIDDEN);
    }

    if (buttonsStates[buttonState].button2Enabled)
    {
        // Un-hide button 2
        if (lv_obj_has_flag(ui_textButton2Container, LV_OBJ_FLAG_HIDDEN)) {
            lv_obj_remove_flag(ui_textButton2Container, LV_OBJ_FLAG_HIDDEN);
        }
        // Set label text
        lv_label_set_text(ui_textButton2Label, buttonsStates[buttonState].button2Text);
    }
    else
    {
        lv_obj_add_flag(ui_textButton2Container, LV_OBJ_FLAG_HIDDEN);
    }

    if (buttonsStates[buttonState].button3Enabled)
    {
        // Un-hide button 3
        if (lv_obj_has_flag(ui_textButton3Container, LV_OBJ_FLAG_HIDDEN)) {
            lv_obj_remove_flag(ui_textButton3Container, LV_OBJ_FLAG_HIDDEN);
        }
        // Set label text
        lv_label_set_text(ui_textButton3Label, buttonsStates[buttonState].button3Text);
    }
    else
    {
        lv_obj_add_flag(ui_textButton3Container, LV_OBJ_FLAG_HIDDEN);
    }
}
