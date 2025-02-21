#ifndef __AUDIO_H_
#define __AUDIO_H_

#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdarg.h>

void populate_sine_wave(uint16_t *audio_data);

void PlayAudio(void);

void printWavHeader(uint8_t *header);

#endif
