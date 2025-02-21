SET(SOURCES screens/ui_MainScreen.c
    ui.c
    components/ui_comp_hook.c
    ui_helpers.c
    images/ui_img_background_resized_png.c
    images/ui_img_battery_full_transparent_png.c
    images/ui_img_sd_png.c
    images/ui_img_mail_transparent_resized_png.c
    images/ui_img_satellite_transparent_resized_outlined_png.c
    images/ui_img_settings_transparent_resized_outlined_png.c
    images/ui_img_folder_transparent_resized_outlined_png.c)

add_library(ui ${SOURCES})
