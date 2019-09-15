
DEVICE_PATH := device/asus/A86

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
#TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon
#TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon
#KCFLAGS := -mtune=cortex-a7 -mfpu=neon
#KCPPFLAGS := -mtune=cortex-a7 -mfpu=neon
#KCFLAGS := -mtune=cortex-a7 -mfpu=neon -O2 -fno-caller-saves
#KCPPFLAGS := -mtune=cortex-a7 -mfpu=neon -O2 -fno-caller-saves
#KCFLAGS := -mtune=cortex-a15 -mfpu=neon
#KCPPFLAGS := -mtune=cortex-a15 -mfpu=neon
#KCFLAGS := -mtune=cortex-a15 -mfpu=neon -mfloat-abi=soft
#KCPPFLAGS := -mtune=cortex-a15 -mfpu=neon -mfloat-abi=soft
#KCFLAGS := -mtune=cortex-a15 # -mfloat-abi=soft
#KCPPFLAGS := -mtune=cortex-a15 # -mfloat-abi=soft
#KCFLAGS := -mtune=cortex-a15 -mfpu=vfpv4
#KCPPFLAGS := -mtune=cortex-a15 -mfpu=vfpv4
#KCFLAGS := -mtune=cortex-a15 -mfpu=neon -O2 -fno-caller-saves
#KCPPFLAGS := -mtune=cortex-a15 -mfpu=neon -O2 -fno-caller-saves
##KCFLAGS := -mtune=cortex-a15 -mfpu=neon -Og -g -fno-caller-saves
##KCPPFLAGS := -mtune=cortex-a15 -mfpu=neon -Og -g -fno-caller-saves
#KCFLAGS := -O2 -fno-caller-saves
#KCPPFLAGS := -O2 -fno-caller-saves
#KCFLAGS := -mfpu=neon-vfpv4
#KCPPFLAGS := -mfpu=neon-vfpv4
#KCFLAGS := -mcpu=cortex-a9 -mtune=cortex-a9 -mfpu=neon-vfpv4
#KCPPFLAGS := -mcpu=cortex-a9 -mtune=cortex-a9 -mfpu=neon-vfpv4
#KCFLAGS := -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp -O2 -fno-caller-saves
#KCPPFLAGS := -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp -O2 -fno-caller-saves
##export KCFLAGS
##export KCPPFLAGS
#BOARD_VENDOR := asus

# Architecture
#ARCH_ARM_HAVE_NEON := true
#ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
#TARGET_CPU_SMP := false
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
#ARCH_ARM_HAVE_VFP := true

TARGET_USES_64_BIT_BINDER := true
BOARD_USES_QCOM_HARDWARE := true
TARGET_NO_RADIOIMAGE := true
#TARGET_COMPILE_WITH_MSM_KERNEL := true
#USE_CLANG_PLATFORM_BUILD := true
#TARGET_HW_DISK_ENCRYPTION := true
#TARGET_LEGACY_HW_DISK_ENCRYPTION := true
TARGET_HW_DISK_ENCRYPTION := false
#BOARD_DTBTOOL_ARGS := -2
BOARD_NO_SECURE_DISCARD := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_POWERHAL_VARIANT := qcom
BOARD_USES_QC_TIME_SERVICES := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
#ENABLE_CPUSETS := true
#TARGET_PROVIDES_LIBLIGHT := true

###
#BOARD_VOLD_CRYPTFS_MIGRATE := true
#AUDIO_FEATURE_ENABLED_HWDEP_CAL := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_POST_PROC := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
#TARGET_USE_SDCLANG := true
TARGET_NO_RPC := true
TARGET_RIL_VARIANT := caf
PROTOBUF_SUPPORTED := true
#TARGET_USES_MEDIA_EXTENSIONS := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
###
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U
TARGET_USES_ION := true
#TARGET_USES_NEW_ION_API := true
#USE_OPENGL_RENDERER := true
#TARGET_USES_OVERLAY := true
#TARGET_USES_QCOM_DISPLAY_BSP := true
#TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
EXCLUDE_SERIF_FONTS := true
###

# FM
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true
TARGET_FM_LEGACY_PATCHLOADER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

###

BUILD_NUMBER := 12.4.0.72-20151116
export BUILD_NUMBER
ASUS_BUILD_PROJECT := A86
export ASUS_BUILD_PROJECT
#TARGET_BUILD_VARIANT := user

#TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
LZMA_RAMDISK_TARGETS := recovery

include device/qcom/sepolicy/sepolicy.mk
#include device/qcom/sepolicy-legacy/sepolicy.mk

BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy
#POLICYVERS := 26

# Bootloader
TARGET_NO_BOOTLOADER := true
#TARGET_NO_BOOTLOADER := false
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_BOOTLOADER_NAME := qcom

# Kernel
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,9600,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive UNLOCKED=Y UARTLOG=Y loglevel=7 klog=y dbg=y
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive UNLOCKED=Y
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.2 androidboot.selinux=permissive UNLOCKED=Y
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_SEPARATED_DT := true
#TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_ARCH := arm
#BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --dt $(DEVICE_PATH)/dt.img
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
#TARGET_NO_KERNEL :=
#USES_UNCOMPRESSED_KERNEL :=
#BOARD_KERNEL_IMAGE_NAME := kernel
#BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_PATH)/kernel
#TARGET_KERNEL_SOURCE := kernel/asus/A86
TARGET_KERNEL_SOURCE := kernel/asus/T004
ifeq ($(TARGET_BUILD_VARIANT), perf)
        TARGET_KERNEL_CONFIG := a86-perf_defconfig
else ifeq ($(TARGET_BUILD_VARIANT), userdebug)
        TARGET_KERNEL_CONFIG := a86-userdebug_defconfig
else # eng or user
        TARGET_KERNEL_CONFIG := a86_defconfig
endif
#TARGET_KERNEL_CONFIG := a86_defconfig
###TARGET_KERNEL_CONFIG := a86-userdebug_defconfig
# Partitions
#BOARD_CACHE_DEVICE :=
#BOARD_CACHE_FILESYSTEM := 
#BOARD_CACHE_FILESYSTEM_OPTIONS :=
#BOARD_SYSTEM_DEVICE :=
#BOARD_SYSTEM_FILESYSTEM :=
#BOARD_SYSTEM_FILESYSTEM_OPTIONS :=
#BOARD_DATA_DEVICE :=
#BOARD_DATA_FILESYSTEM :=
#BOARD_DATA_FILESYSTEM_OPTIONS :=

#BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_FLASH_BLOCK_SIZE := 2048
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_CACHEIMAGE_PARTITION_SIZE := 872415232
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Hardware Rendering
#TARGET_GPU_PP_CORE :=
#NUM_FRAMEBUFFER_SURFACE_BUFFERS :=

# Bluetooth
#BOARD_HAVE_BLUETOOTH :=
#BOARD_HAVE_BLUETOOTH_BCM :=

# Wi-Fi
#BOARD_WLAN_DEVICE_REV :=
#WIFI_DRIVER_FW_PATH_PARAM :=
#WIFI_DRIVER_MODULE_NAME :=
#WIFI_DRIVER_MODULE_ARG :=
#WIFI_DRIVER_MODULE_AP_ARG :=

# Wi-Fi Tethering
#BOARD_LEGACY_NL80211_STA_EVENTS :=
#BOARD_NO_APSME_ATTR :=

# Charger
#BOARD_CHARGER_ENABLE_SUSPEND :=
#BOARD_CHARGING_MODE_BOOTING_LPM :=

# Recovery
#BOARD_SUPPRESS_EMMC_WIPE :=
#BOARD_HAS_NO_MISC_PARTITION :=
#BOARD_HAS_NO_REAL_SDCARD :=
#BOARD_HAS_NO_SELECT_BUTTON :=
#TARGET_RECOVERY_PIXEL_FORMAT :=
#DEVICE_RESOLUTION :=
#HAVE_SELINUX :=
#TARGET_USERIMAGES_USE_EXT4 :=

# Audio configs
#BOARD_USES_GENERIC_AUDIO :=

# Telephony
#BOARD_USE_VETH :=
#BOARD_SPRD_RIL :=
#USE_BOOT_AT_DIAG :=

ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
    endif
  endif
endif

TARGET_PROVIDES_KEYMASTER := true
TARGET_ENABLE_MEDIADRM_64 := true
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_HAS_LEGACY_POWER_STATS := true
TARGET_HAS_NO_WLAN_STATS := true
TARGET_USES_INTERACTION_BOOST := true


# Don't generate block based zips
#BLOCK_BASED_OTA :=

#USE_CAMERA_STUB :=
#BOARD_USE_LEGACY_TOUCHSCREEN :=

# CMHW
#BOARD_HARDWARE_CLASS :=

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE                := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
PRODUCT_VENDOR_MOVE_ENABLED      := true
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
#TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI       := true
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WPA_SUPPLICANT_VERSION           := VER_0_8_X


# Bionic
TARGET_LD_SHIM_LIBS := \
    /system/vendor/bin/mm-qcamera-daemon|libshims_atomic.so \
    /system/vendor/bin/mpdecision|libshims_atomic.so

#TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
#    /system/bin/mediaserver=22 \
#    /system/vendor/bin/mm-qcamera-daemon=22

#USE_DEVICE_SPECIFIC_CAMERA := true
#TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true

#TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
#    /system/vendor/bin/mm-qcamera-daemon=23


# TWRP
ifeq ($(WITH_TWRP),true)
TARGET_RECOVERY_DEVICE_DIRS := $(DEVICE_PATH)/twrp
TW_CRYPTO_USE_SBIN_VOLD := true
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.170/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 162
TW_HAS_DOWNLOAD_MODE := true
TW_MAX_BRIGHTNESS := 255
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_NO_EXFAT_FUSE := true
TW_NO_REBOOT_BOOTLOADER := true
endif

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/msm_dwc3/f9200000.dwc3/gadget/lun%d/file"

ifneq ($(TARGET_BUILD_VARIANT),user)
SELINUX_IGNORE_NEVERALLOWS := true
endif

-include vendor/asus/A86/BoardConfigVendor.mk
