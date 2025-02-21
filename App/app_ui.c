#include "main.h"
#include "logging.h"
#include "app.h"
#include "ui.h"
#include "ui_buttons.h"
#include "ui_menu.h"
#include "lvgl.h"
#include "tft_st7789.h"

extern SPI_HandleTypeDef hspi2;

#define MY_DISP_HOR_RES 240
#define MY_DISP_VER_RES 320
/* Declare buffer for 1/10 screen size; BYTES_PER_PIXEL will be 2 for RGB565. */
#define BYTES_PER_PIXEL 2 //(LV_COLOR_FORMAT_GET_SIZE(LV_COLOR_FORMAT_RGB565))

uint8_t buf1[MY_DISP_HOR_RES * MY_DISP_VER_RES / 10 * BYTES_PER_PIXEL]; //15KB RAM
tft_st7789_instance_t tft;
lv_display_t * display1;
volatile application_event_e uiEvent;

// Declare the input device (keyboard) driver
lv_indev_t * indev_keypad;

// Keyboard input state
volatile uint32_t keyboardKey = 0;

static void lv_indev_createKeypad(void);
void my_event_cb(lv_event_t * event);
void indev_keypad_read_cb(lv_indev_t * indev_drv, lv_indev_data_t * data);
static void my_print_cb(lv_log_level_t level, const char * buf);
static void my_flush_cb(lv_display_t * display, const lv_area_t * area, uint8_t * px_map);

void ui_app_setup(void)
{
	DebugLogPrintf(__FUNCTION__, "Begin");

	tft_st7789_init(&tft, MY_DISP_HOR_RES, MY_DISP_VER_RES);
	tft_st7789_setRotation(&tft, 3);

	lv_init();
	lv_tick_set_cb(xTaskGetTickCount);
	lv_log_register_print_cb(my_print_cb);

	display1 = lv_display_create(MY_DISP_VER_RES, MY_DISP_HOR_RES); // sway h/w

	/* Set display buffer for display `display1`. */
	lv_display_set_buffers(display1, buf1, NULL, sizeof(buf1), LV_DISPLAY_RENDER_MODE_PARTIAL);
	lv_display_set_color_format(display1, LV_COLOR_FORMAT_RGB565);
	lv_display_set_flush_cb(display1, my_flush_cb);

	ui_init();

	// initial button state
	ui_handle_updateButtons(UI_MAIN_MENU);
	lv_obj_add_state(ui_imageButton1, LV_STATE_FOCUSED);

	lv_indev_createKeypad();

	DebugLogPrintf(__FUNCTION__, "End");
}

void ui_app_update(void)
{
	if (uiEvent != NO_INPUT)
	{
		// Handle event
		ui_handle_extiEvent(uiEvent);
		// Reset event flag
		uiEvent = NO_INPUT;
	}
	else
	{
		lv_timer_handler();
	}

	osDelay(1);
}

// Function to initialize the input device (keyboard)
void lv_indev_createKeypad(void)
{
	// Create input device
    indev_keypad = lv_indev_create();
    lv_indev_set_type(indev_keypad, LV_INDEV_TYPE_KEYPAD);
    lv_indev_set_read_cb(indev_keypad, indev_keypad_read_cb);
    lv_indev_enable(indev_keypad, true);

    // Link keyboard to text entry
    lv_keyboard_set_textarea(ui_keyboard, ui_textEntry);

    // Link input dev to keyboard widget
    lv_group_t * g = lv_group_create();
    lv_indev_set_group(indev_keypad, g);
    lv_group_add_obj(g, ui_keyboard);
    lv_group_set_wrap(g, true);
    lv_group_set_editing(g, true);

    // Register events with keyboard widget
    lv_obj_add_event_cb(ui_keyboard, my_event_cb, LV_EVENT_READY, NULL);
    lv_obj_add_event_cb(ui_keyboard, my_event_cb, LV_EVENT_CANCEL, NULL);
}

// Read callback function for keypad input
void indev_keypad_read_cb(lv_indev_t * indev_drv, lv_indev_data_t * data)
{
    // Provide the simulated key state
    data->state = (keyboardKey > 0) ? LV_INDEV_STATE_PRESSED : LV_INDEV_STATE_RELEASED;
    data->key = (keyboardKey > 0) ? keyboardKey : 0;

    if (keyboardKey > 0)
    {
    	DebugLogPrintf(__FUNCTION__, "Key pressed");
    }

    // Reset key state after reading to simulate release
    keyboardKey = 0;
}

void my_event_cb(lv_event_t * event)
{
	// Handle keyboard close / check button
	ui_switchMenuState(UI_MAIN_MENU);
}

void my_print_cb(lv_log_level_t level, const char * buf)
{
	DebugLogPrintf(__FUNCTION__, buf);
}

void my_flush_cb(lv_display_t * display, const lv_area_t * area, uint8_t * px_map)
{
	// not sure why i need that +1
	tft_st7789_setAddrWindow(&tft, area->x1, area->y1, area->x2 + 1 - area->x1, area->y2 + 1 - area->y1);

    int len = (area->y2 - area->y1 + 1) * (area->x2 - area->x1 + 1);

    lv_draw_sw_rgb565_swap(px_map, len);
    HAL_StatusTypeDef respStat = HAL_SPI_Transmit_DMA(&hspi2, px_map, len * 2);
}

void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi)
{
	/* IMPORTANT!!!
	 * Inform LVGL that flushing is complete so buffer can be modified again. */
	lv_display_flush_ready(display1);
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
    DebugLogPrintf(__FUNCTION__, "pin=0x%x", GPIO_Pin);

    // user button 1 has a short??
    //if ((GPIO_Pin == B1_Pin) || (GPIO_Pin == USER_BUTTON_1_Pin))

    // Record UI event to handle in task execution
    if (GPIO_Pin == B1_Pin)
    {
    	uiEvent = USER_BUTTON1;
    }
    if (GPIO_Pin == USER_BUTTON_2_Pin)
	{
    	uiEvent = USER_BUTTON2;
	}
    if (GPIO_Pin == USER_BUTTON_3_Pin)
	{
    	uiEvent = USER_BUTTON3;
	}
}
