#include "app.h"
#include "ui.h"
#include "ui_buttons.h"
#include "ui_menu.h"

extern ui_menu_state_e currentState;

void ui_switchMenuState(ui_menu_state_e state)
{
    // Update state value
    currentState = state;

    // Do custom widget actions
    switch (state)
    {
        case UI_MAIN_MENU:
        {
            // Hide popup windows
            if (!lv_obj_has_flag(ui_textPopup, LV_OBJ_FLAG_HIDDEN)) {
                lv_obj_add_flag(ui_textPopup, LV_OBJ_FLAG_HIDDEN);
            }
            if (!lv_obj_has_flag(ui_entryPanel, LV_OBJ_FLAG_HIDDEN)) {
                lv_obj_add_flag(ui_entryPanel, LV_OBJ_FLAG_HIDDEN);
            }
            break;
        }
        case UI_MESSAGE_WINDOW:
        {
            if (lv_obj_has_flag(ui_textPopup, LV_OBJ_FLAG_HIDDEN)) {
                lv_obj_remove_flag(ui_textPopup, LV_OBJ_FLAG_HIDDEN);
            }

            lv_textarea_clear_selection(ui_textPopup);

            lv_textarea_set_text(ui_textPopup, "Message Window");

            lv_textarea_add_text(ui_textPopup, "\n");
            lv_textarea_add_text(ui_textPopup, "----------------------------------------------");
            lv_textarea_add_text(ui_textPopup, "\n");
            lv_textarea_add_text(ui_textPopup, "\n");
            lv_textarea_add_text(ui_textPopup, "********************************************");
            break;
        }
        case UI_GNSS_WINDOW:
        {
            if (lv_obj_has_flag(ui_textPopup, LV_OBJ_FLAG_HIDDEN)) {
                lv_obj_remove_flag(ui_textPopup, LV_OBJ_FLAG_HIDDEN);
            }
            lv_textarea_set_text(ui_textPopup,
                "GNSS Position   \n-----------------------------\n\nLat:\t78.1234 \nLon:\t68.1234\nAlt:\t1.234\nNum Sats:\t5");
            break;
        }
        case UI_SETTINGS_WINDOW:
        {
            if (lv_obj_has_flag(ui_textPopup, LV_OBJ_FLAG_HIDDEN)) {
                lv_obj_remove_flag(ui_textPopup, LV_OBJ_FLAG_HIDDEN);
            }

            lv_textarea_clear_selection(ui_textPopup);

            lv_textarea_set_text(ui_textPopup, "Settings");
            break;
        }
        case UI_KEYBOARD:
        {
            // Unhide keyboard panel
            if (lv_obj_has_flag(ui_entryPanel, LV_OBJ_FLAG_HIDDEN)) {
                lv_obj_remove_flag(ui_entryPanel, LV_OBJ_FLAG_HIDDEN);
            }

            //lv_obj_remove_state(ui_imageButton4, LV_STATE_FOCUSED);

            // this worked!
            lv_group_focus_obj(ui_keyboard);
            lv_group_set_editing(lv_obj_get_group(ui_keyboard), ui_keyboard);

            // focus keyboard
            lv_obj_add_state(ui_entryPanel, LV_STATE_FOCUSED);

            break;
        }
        default:
        {
            break;
        }
    }

    // Update button text and visibility
    ui_handle_updateButtons(state);
}