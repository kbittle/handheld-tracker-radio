#include "gps.h"
#include "gps_hal.h"
#include "logging.h"

#include <string.h>
#include <time.h>

#define DEBUG_ENABLED

//-----------------------------------------------------------
// PRIVATE FUNCTION PROTOTYPES
//-----------------------------------------------------------

void GPS_encode(GPS_positionData_t *inst, char inChar);
void parseNmeaMessage(GPS_positionData_t *inst, char *indata, uint8_t len);
int parse_NMEA_RMC(const char *sentence, NMEA_RMC_Data *data);
int parse_NMEA_GNS(const char *sentence, NMEA_GNS_Data *data);
void parse_NMEA_ZDA(const char *sentence, NMEA_ZDA_Data *data);
//void parse_time(const char *time_str, tmElements_t *tm);

//-----------------------------------------------------------
// PUBLIC FUNCTIONS
//-----------------------------------------------------------

GPS_ReturnCode_e GPS_Initialize(GPS_positionData_t *inst) {
	inst->comms.gpsComms = false;
	inst->comms.nmeaPacketCount = 0;
	inst->comms.nmeaPacketCountPrev = 0;
	inst->comms.gpsCommsCntr = 0;
	inst->comms.modulePowered = false;

#ifdef DEBUG_ENABLED
	DebugLogPrintf(__FUNCTION__, "Complete");
#endif

	return GPS_OK;
}

GPS_ReturnCode_e GPS_Update(GPS_positionData_t *inst) {
	uint8_t gpsChar;

	while (GPS_HAL_Available()) {
		gpsChar = GPS_HAL_Read();

		GPS_encode(inst, gpsChar);
	}

	// Checks GPS comms
	if (inst->comms.nmeaPacketCountPrev == inst->comms.nmeaPacketCount) {
		if (GPS_HAL_GetMilliseconds() - inst->comms.gpsCommsCntr
				> (GPS_COMMS_TIMEOUT_S * 1000)) {
			inst->comms.gpsComms = false;
		}
	} else {
		// Set comms to good and reset the timer
		inst->comms.gpsComms = true;
		inst->comms.gpsCommsCntr = GPS_HAL_GetMilliseconds();
	}
	inst->comms.nmeaPacketCountPrev = inst->comms.nmeaPacketCount;

#ifdef DEBUG_ENABLED
	if (GPS_HAL_GetMilliseconds() - inst->debugPrintCntr > 5000) {
		DebugLogPrintf(__FUNCTION__,
				"modulePowered: %d, gpsComms: %d, nmeaPacketCount: %d",
				inst->comms.modulePowered ? "ON" : "OFF",
				inst->comms.gpsComms ? "GOOD" : "BAD",
				inst->comms.nmeaPacketCount);

		inst->debugPrintCntr = GPS_HAL_GetMilliseconds();
	}
#endif

	return GPS_OK;
}

GPS_ReturnCode_e GPS_PowerOn(GPS_positionData_t *inst) {
	GPS_HAL_PowerControl(GPS_FULL_PWR);

	inst->comms.modulePowered = true;

#ifdef DEBUG_ENABLED
	DebugLogPrintf(__FUNCTION__, "Complete");
#endif

	return GPS_OK;
}

GPS_ReturnCode_e GPS_PowerOff(GPS_positionData_t *inst) {
	GPS_HAL_PowerControl(GPS_OFF);

	inst->comms.modulePowered = false;

#ifdef DEBUG_ENABLED
	DebugLogPrintf(__FUNCTION__, "Complete");
#endif

	return GPS_OK;
}

bool GPS_GetPowered(GPS_positionData_t *inst) {
	return inst->comms.modulePowered;
}

//-----------------------------------------------------------
// PRIVATE FUNCTIONS
//-----------------------------------------------------------

void GPS_encode(GPS_positionData_t *inst, char inChar) {
	if (inChar == '$') {
		inst->comms.nmeaPacketCount++;

		// reset buffer
		inst->nmeaCharBufferIndex = 0;
	}

	if (inChar == '\n') {
		inst->nmeaCharBuffer[inst->nmeaCharBufferIndex] = inChar;

		parseNmeaMessage(inst, (char*) &inst->nmeaCharBuffer,
				inst->nmeaCharBufferIndex);

		// reset buffer
		inst->nmeaCharBufferIndex = 0;
		memset(&inst->nmeaCharBuffer, 0, sizeof(inst->nmeaCharBuffer));
	} else {
		inst->nmeaCharBuffer[inst->nmeaCharBufferIndex] = inChar;
		inst->nmeaCharBufferIndex++;
	}
}

void parseNmeaMessage(GPS_positionData_t *inst, char *indata, uint8_t len) {
	if ((strncmp((char*) indata, "$GPRMC", 6) == 0)
			|| (strncmp((char*) indata, "$GNRMC", 6) == 0)) {
		if (parse_NMEA_RMC(indata, &inst->rmc_data)) {
#ifdef GPS_DEBUG_ENABLED
			DebugLogPrintf(__FUNCTION__, "RMC Data:");
			DebugLogPrintf(__FUNCTION__, "Time: %s", inst->rmc_data.time);
			DebugLogPrintf(__FUNCTION__, "Status: %c", inst->rmc_data.status);
			DebugLogPrintf(__FUNCTION__, "Latitude: %.5f %c",
					inst->rmc_data.latitude, inst->rmc_data.lat_dir);
			DebugLogPrintf(__FUNCTION__, "Longitude: %.5f %c",
					inst->rmc_data.longitude, inst->rmc_data.lon_dir);
			DebugLogPrintf(__FUNCTION__, "Speed: %.3f", inst->rmc_data.speed);
            #endif
		} else {
#ifdef DEBUG_ENABLED
			DebugLogPrintf(__FUNCTION__, "Error parsing NMEA RMC sentence");
#endif
		}
	} else if ((strncmp((char*) indata, "$GPGNS", 6) == 0)
			|| (strncmp((char*) indata, "$GNGNS", 6) == 0)) {
		if (parse_NMEA_GNS(indata, &inst->gns_data)) {
#ifdef GPS_DEBUG_ENABLED
			DebugLogPrintf(__FUNCTION__, "GNS Data:");
			DebugLogPrintf(__FUNCTION__, "Time: %s",
					inst->gns_data.time);
			DebugLogPrintf(__FUNCTION__, "Latitude: %.5f %c",
					inst->gns_data.latitude,
					inst->gns_data.lat_dir);
			DebugLogPrintf(__FUNCTION__, "Longitude: %.5f %c",
					inst->gns_data.longitude,
					inst->gns_data.lon_dir);
			DebugLogPrintf(__FUNCTION__, "Mode: %c",
					inst->gns_data.mode);
			DebugLogPrintf(__FUNCTION__, "Number of Satellites: %d",
					inst->gns_data.satellites);
			DebugLogPrintf(__FUNCTION__, "HDOP: %.2f",
					inst->gns_data.hdop);
			DebugLogPrintf(__FUNCTION__, "Altitude: %.2f",
					inst->gns_data.altitude);
			DebugLogPrintf(__FUNCTION__, "Geoid separation: %.2f",
					inst->gns_data.geoid);
            #endif
		} else {
#ifdef DEBUG_ENABLED
			DebugLogPrintf(__FUNCTION__, "Error parsing NMEA GNS sentence");
#endif
		}
	} else if ((strncmp((char*) indata, "$GPZDA", 6) == 0)
			|| (strncmp((char*) indata, "$GNZDA", 6) == 0)) {
		parse_NMEA_ZDA(indata, &inst->zda_data);
	} else if (strncmp((char*) indata, "$GPGSV", 6) == 0) {
		DebugLogPrintf(__FUNCTION__, "GSV-GNSS Satellites in View");
	} else if (strncmp((char*) indata, "$GNTXT", 6) == 0) {

	} else {
		//Serial.printf("%s: Unsupported message \n", __FUNCTION__);
	}
}

int parse_NMEA_RMC(const char *sentence, NMEA_RMC_Data *data) {
	char *field_start, *field_end;
	char fields[MAX_FIELDS][MAX_FIELD_LENGTH];
	int field_count = 0;
	int sentence_length = strlen(sentence);

	// Iterate through the sentence and extract fields manually
	field_start = (char*) sentence;
	for (int i = 0; i < sentence_length; i++) {
		if (sentence[i] == ',' || sentence[i] == '*'
				|| i == sentence_length - 1) {
			field_end = (char*) &sentence[i];
			int field_length = field_end - field_start;
			strncpy(fields[field_count], field_start, field_length);
			fields[field_count][field_length] = '\0';
			field_start = field_end + 1;
			field_count++;
			if (field_count >= MAX_FIELDS)
				break;
		}
	}

	// Extract relevant fields from RMC sentence
	if (strlen(fields[1]) > 0)
		strcpy(data->time, fields[1]);
	if (strlen(fields[2]) > 0)
		data->status = fields[2][0];
	if (strlen(fields[3]) > 0)
		data->latitude = atof(fields[3]);
	if (strlen(fields[4]) > 0)
		data->lat_dir = fields[4][0];
	if (strlen(fields[5]) > 0)
		data->longitude = atof(fields[5]);
	if (strlen(fields[6]) > 0)
		data->lon_dir = fields[6][0];
	if (strlen(fields[7]) > 0)
		data->speed = atof(fields[7]);

	return 1; // Parsing successful
}

int parse_NMEA_GNS(const char *sentence, NMEA_GNS_Data *data) {
	char *field_start, *field_end;
	char fields[MAX_FIELDS][MAX_FIELD_LENGTH];
	int field_count = 0;
	int sentence_length = strlen(sentence);

	// Iterate through the sentence and extract fields manually
	field_start = (char*) sentence;
	for (int i = 0; i < sentence_length; i++) {
		if (sentence[i] == ',' || sentence[i] == '*'
				|| i == sentence_length - 1) {
			field_end = (char*) &sentence[i];
			int field_length = field_end - field_start;
			strncpy(fields[field_count], field_start, field_length);
			fields[field_count][field_length] = '\0';
			field_start = field_end + 1;
			field_count++;
			if (field_count >= MAX_FIELDS)
				break;
		}
	}

	// Extract relevant fields from GNS sentence
	if (strlen(fields[1]) > 0)
		strcpy(data->time, fields[1]);
	if (strlen(fields[2]) > 0)
		data->latitude = atof(fields[2]);
	if (strlen(fields[3]) > 0)
		data->lat_dir = fields[3][0];
	if (strlen(fields[4]) > 0)
		data->longitude = atof(fields[4]);
	if (strlen(fields[5]) > 0)
		data->lon_dir = fields[5][0];
	if (strlen(fields[6]) > 0)
		data->mode = fields[6][0];
	if (strlen(fields[7]) > 0)
		data->satellites = atoi(fields[7]);
	if (strlen(fields[8]) > 0)
		data->hdop = atof(fields[8]);
	if (strlen(fields[9]) > 0)
		data->altitude = atof(fields[9]);
	if (strlen(fields[11]) > 0)
		data->geoid = atof(fields[11]);

	return 1; // Parsing successful
}

void parse_NMEA_ZDA(const char *sentence, NMEA_ZDA_Data *data) {
	char *field_start, *field_end;
	char fields[MAX_FIELDS][MAX_FIELD_LENGTH];
	int field_count = 0;
	int sentence_length = strlen(sentence);

	// Iterate through the sentence and extract fields manually
	field_start = (char*) sentence;
	for (int i = 0; i < sentence_length; i++) {
		if (sentence[i] == ',' || sentence[i] == '*'
				|| i == sentence_length - 1) {
			field_end = (char*) &sentence[i];
			int field_length = field_end - field_start;
			strncpy(fields[field_count], field_start, field_length);
			fields[field_count][field_length] = '\0';
			field_start = field_end + 1;
			field_count++;
			if (field_count >= MAX_FIELDS)
				break;
		}
	}

	// Extract relevant fields from ZDA sentence
//    struct tm tm = {0};
//    sscanf(fields[1], "%2d%2d%4d", &data->day, &data->month, &data->year);
//    sscanf(fields[2], "%2d%2d%2d", &data->hour, &data->minute, &data->second);
//    sscanf(fields[3], "%2d%2d", &data->timezone_hour, &data->timezone_minute);
//
//    tm.tm_year = data->year - 1900; // Year since 1900
//    tm.tm_mon = data->month - 1; // Month (0-11)
//    tm.tm_mday = data->day; // Day of the month (1-31)
//    tm.tm_hour = data->hour; // Hours since midnight (0-23)
//    tm.tm_min = data->minute; // Minutes after the hour (0-59)
//    tm.tm_sec = data->second; // Seconds after the minute (0-59)
//    data->time = mktime(&tm); // Convert struct tm to time_t
}

//void parse_time(const char *time_str, tmElements_t *tm) {
//    if (strlen(time_str) >= 6)
//    {
//        // Index: 012345
//        //        hhmmss.sss
//        tm->Hour = (time_str[0] - '0') * 10 + (time_str[1] - '0');
//        tm->Minute = (time_str[2] - '0') * 10 + (time_str[3] - '0');
//        tm->Second = (time_str[4] - '0') * 10 + (time_str[5] - '0');
//
//        // Convert UTC to eastern
//        if (tm->Hour > 4)
//        {
//            tm->Hour -= 4;
//        }
//        else
//        {
//            tm->Hour = 24 - (4 - tm->Hour);
//        }
//    }
//    else
//    {
//        tm->Hour = 0;
//        tm->Minute = 0;
//        tm->Second = 0;
//    }
//}
