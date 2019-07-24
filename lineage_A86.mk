# Boot animation
#TARGET_SCREEN_HEIGHT := 1920
#TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/asus/A86/A86.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#DEVICE_PACKAGE_OVERLAYS += device/asus/A86/overlay

###PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
#PRODUCT_NAME := WW_PadFone
PRODUCT_NAME := lineage_A86
PRODUCT_BRAND := asus
#PRODUCT_MODEL := PadFone T004
PRODUCT_MODEL := A86
PRODUCT_MANUFACTURER := asus
#PRODUCT_DEVICE := ASUS-A86
PRODUCT_DEVICE := A86
TARGET_VENDOR := asus
TARGET_VENDOR_PRODUCT_NAME := A86

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME=WW_PadFone \
#    BUILD_FINGERPRINT=asus/WW_PadFone/ASUS-A86:5.0.2/LRX22G/12.4.0.72-20151116:user/release-keys \
#    PRIVATE_BUILD_DESC="WW_PadFone-user 5.0.2 LRX22G 12.4.0.72-20151116 release-keys"

#KERNEL_SRC_DIR := kernel/asus/A86

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#LOCAL_KERNEL := device/asus/A86/kernel
#else
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif
#
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

