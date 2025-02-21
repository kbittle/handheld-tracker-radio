#include "lvgl.h"
#include "lvgl/src/misc/lv_types.h"
#include "ui_events.h" // lv_types needs to be included first
#include "ui.h"
#include "app.h"
#include "ui_buttons.h"
#include "ui_menu.h"

static void ui_handle_mainMenu(application_event_e event);
static void ui_handle_messageMenu(application_event_e event);
static void ui_handle_gnssMenu(application_event_e event);
void ui_handle_settingsMenu(application_event_e event);
void ui_handle_keyboardMenu(application_event_e event);

ui_menu_state_e currentState = UI_MAIN_MENU;

extern lv_indev_t * indev_keypad;
extern volatile uint32_t keyboardKey;

void messageButtonHandler(lv_event_t *e) {
	// custom button handler from UI framework event
}

void ui_handle_extiEvent(application_event_e event) {
	switch (currentState)
	{
		case UI_MAIN_MENU:
		{
			ui_handle_mainMenu(event);
			break;
		}
		case UI_MESSAGE_WINDOW:
		{
			ui_handle_messageMenu(event);
			break;
		}
		case UI_GNSS_WINDOW:
		{
			ui_handle_gnssMenu(event);
			break;
		}
		case UI_SETTINGS_WINDOW:
		{
			ui_handle_settingsMenu(event);
			break;
		}
		case UI_KEYBOARD:
		{
			ui_handle_keyboardMenu(event);
			break;
		}
		default:
			break;
	}
}

void ui_handle_mainMenu(application_event_e event)
{
	if (event == USER_BUTTON1) {
		if (lv_obj_has_state(ui_imageButton1, LV_STATE_FOCUSED)) {
			ui_switchMenuState(UI_MESSAGE_WINDOW);
		} else if (lv_obj_has_state(ui_imageButton2, LV_STATE_FOCUSED)) {
			ui_switchMenuState(UI_GNSS_WINDOW);
		} else if (lv_obj_has_state(ui_imageButton3, LV_STATE_FOCUSED)) {
			ui_switchMenuState(UI_SETTINGS_WINDOW);
		} else if (lv_obj_has_state(ui_imageButton4, LV_STATE_FOCUSED)) {
			ui_switchMenuState(UI_KEYBOARD);
		} else if (lv_obj_has_state(ui_imageButton5, LV_STATE_FOCUSED)) {
			ui_switchMenuState(UI_GNSS_WINDOW);
		} else if (lv_obj_has_state(ui_imageButton6, LV_STATE_FOCUSED)) {
			ui_switchMenuState(UI_GNSS_WINDOW);
		}
	} else if (event == USER_BUTTON2) {
		// Set button pressed. When to remove pressed state?
		lv_obj_add_state(ui_textButton2, LV_STATE_PRESSED);
		lv_obj_remove_state(ui_textButton3, LV_STATE_PRESSED);

		if (lv_obj_has_state(ui_imageButton1, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton1, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton6, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton2, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton2, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton1, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton3, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton3, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton2, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton4, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton4, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton3, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton5, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton5, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton4, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton6, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton6, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton5, LV_STATE_FOCUSED);
		}
	} else if (event == USER_BUTTON3) {
		// Set button pressed. When to remove pressed state?
		lv_obj_remove_state(ui_textButton2, LV_STATE_PRESSED);
		lv_obj_add_state(ui_textButton3, LV_STATE_PRESSED);

		// Change highlighted image button
		if (lv_obj_has_state(ui_imageButton1, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton1, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton2, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton2, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton2, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton3, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton3, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton3, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton4, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton4, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton4, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton5, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton5, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton5, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton6, LV_STATE_FOCUSED);
		} else if (lv_obj_has_state(ui_imageButton6, LV_STATE_FOCUSED)) {
			lv_obj_remove_state(ui_imageButton6, LV_STATE_FOCUSED);
			lv_obj_add_state(ui_imageButton1, LV_STATE_FOCUSED);
		}
	}
}

void ui_handle_messageMenu(application_event_e event)
{
	if (event == USER_BUTTON3) {
		// Set button pressed. When to remove pressed state?
		lv_obj_remove_state(ui_textButton2, LV_STATE_PRESSED);
		lv_obj_add_state(ui_textButton3, LV_STATE_PRESSED);

		ui_switchMenuState(UI_MAIN_MENU);
	}
}

void ui_handle_gnssMenu(application_event_e event)
{
	if (event == USER_BUTTON3) {
		// Set button pressed. When to remove pressed state?
		lv_obj_remove_state(ui_textButton2, LV_STATE_PRESSED);
		lv_obj_add_state(ui_textButton3, LV_STATE_PRESSED);

		ui_switchMenuState(UI_MAIN_MENU);
	}
}

void ui_handle_settingsMenu(application_event_e event)
{
	if (event == USER_BUTTON3) {
		// Set button pressed. When to remove pressed state?
		lv_obj_remove_state(ui_textButton2, LV_STATE_PRESSED);
		lv_obj_add_state(ui_textButton3, LV_STATE_PRESSED);

		ui_switchMenuState(UI_MAIN_MENU);
	}
}

void ui_handle_keyboardMenu(application_event_e event)
{
	// Map hardware buttons to keyboard widget keys
	if (event == USER_BUTTON1) {
		keyboardKey = LV_KEY_RIGHT;
	}
	else if (event == USER_BUTTON2) {
		keyboardKey = LV_KEY_LEFT;
	}
	else if (event == USER_BUTTON3) {
		keyboardKey = LV_KEY_ENTER;
	}
}

