# Handheld Location Radio

A handheld device created to use the RBmesh radio module. Long term goal is to send PLI, files from SD card, and possibly audio over radio link.

## Software Notes:

Using Stm32CubeMX + Stm32CubeIde. For the UI I am using LVGL library + SquareLine Studio to design/generate the LVGL code.

### Notes to build lvdl
- Pull Release v9.1.0 from bitbucket
- Delete test folder.(Not sure if necissary?)
- Add source to project and add include paths
- Create lv_conf.h, set ifdef to 1. Must put in folder at same lvl as lvgl.
- TBD figure out good buffer sizes. 
	- LV_MEM_SIZE is set to 64Kb
	- LV_DRAW_LAYER_SIMPLE_BUF_SIZE is 24Kb

### Notes when using Squarelin Studio
- Modify SquareLine_Project.spj line "lvgl_include_path" to use "lvgl.h"
- Export file and update include paths

## Hardware:

### Version 3:

I plan on switching to a stm32u5 controller as they are cheaper and available on lcsc.com. 1MB of flash may be enough, might need to investigate adding external flash. That may be difficult for LVGL as it needs memory addresses of the marge image files.

### Version 2:

I switched to using a STM32 microcontroller. This time trying to use the STM32CubeIDE for the first time. The eclipse based editor is not my favorite but it gets the job done. This is paired with the Stm32CubeMX tool which I am using to generate as much code as it possibly can.

![Alt text](resources/pcb-v2.jpg?raw=true "Custom PCB")

### Version 1:

The first version was my attempt to use the RP2040 pico for the first time. Created a board with the assumption that any peripheral can be mapped to any pin. I used a cheap LCD I found on lcsc.com. Once I learned that the pico had a limited number of PIO's, and the LCD is monochrome with a blue blacklight, this version died.

![Alt text](resources/handheld-v1.png?raw=true "Enclosure")
![Alt text](resources/pcb-v1-front.png?raw=true "PCB Front")
![Alt text](resources/pcb-v1-back.png?raw=true "PCB Back")

