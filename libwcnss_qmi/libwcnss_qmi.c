/*
 * Copyright (C) 2014, The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * based on https://github.com/LineageOS/android_device_asus_P024/tree/cm-14.1/libwcnss_qmi
 */

//#define LOG_NDEBUG 0

#define LOG_TAG "wcnss_A86"

#include <cutils/log.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>


int wcnss_init_qmi(void)
{
    /* empty */
    return 0;
}

int wcnss_qmi_get_wlan_address(unsigned char *pBdAddr)
{
	FILE *genmac = fopen("/factory/wifi.nv","r");

	fscanf(genmac, "MacAddress0=%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx",
            &pBdAddr[0],
            &pBdAddr[1],
            &pBdAddr[2],
            &pBdAddr[3],
            &pBdAddr[4],
            &pBdAddr[5]);

	ALOGI("Found MAC address: %02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx\n",
            pBdAddr[0],
            pBdAddr[1],
            pBdAddr[2],
            pBdAddr[3],
            pBdAddr[4],
            pBdAddr[5]);

	fclose(genmac);

	return 0;
}

void wcnss_qmi_deinit(void)
{
    /* empty */
}
