#ifndef __GPS_H__
#define __GPS_H__

#include <stdint.h>
#include <stdbool.h>

#define GPS_COMMS_TIMEOUT_S         (10)      // X seconds without GPS data and we consider it a comms loss

#define MAX_FIELDS 20
#define MAX_FIELD_LENGTH 20

typedef enum
{
    GPS_OK = 0,
    GPS_BUSY,
    GPS_ERROR
} GPS_ReturnCode_e;

typedef struct 
{
    char time[12];
    char status;
    float latitude;
    char lat_dir;
    float longitude;
    char lon_dir;
    float speed;
} NMEA_RMC_Data;

typedef struct 
{
    char time[12];
    float latitude;
    char lat_dir;
    float longitude;
    char lon_dir;
    char mode;
    int satellites;
    float hdop;
    float altitude;
    float geoid;
} NMEA_GNS_Data;

typedef struct 
{
    uint32_t time; //time_t time;
    int day;
    int month;
    int year;
    int hour;
    int minute;
    int second;
    int timezone_hour;
    int timezone_minute;
} NMEA_ZDA_Data;

typedef union __attribute__((packed))
{
    int ieee;
    float val;
} floatConverter;

typedef struct
{
    // GPS comms data
    bool gpsComms;
    int nmeaPacketCount;
    int nmeaPacketCountPrev;
    unsigned long gpsCommsCntr;

    bool modulePowered;
} GPS_commsData_t;

// Global Vars stored in struct
typedef struct
{
    // GPS data
    bool gpsFix;
    uint32_t time; //time_t epochTime;
    
    NMEA_GNS_Data gns_data;
    NMEA_RMC_Data rmc_data;
    NMEA_ZDA_Data zda_data;

    // GPS comms data
    GPS_commsData_t comms;

    uint32_t debugPrintCntr;
    // NMEA processing buffer
    char nmeaCharBuffer[256];
    uint8_t nmeaCharBufferIndex;
} GPS_positionData_t;

//! Function to setup GPS NMEA parser
GPS_ReturnCode_e GPS_Initialize(GPS_positionData_t *inst);

//! Function to process NMEA strings
GPS_ReturnCode_e GPS_Update(GPS_positionData_t *inst);

GPS_ReturnCode_e GPS_PowerOn(GPS_positionData_t *inst);
GPS_ReturnCode_e GPS_PowerOff(GPS_positionData_t *inst);
bool GPS_GetPowered(GPS_positionData_t *inst);


#endif // hdr ifdef
