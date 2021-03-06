# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common halogenOS stuff.
$(call inherit-product, vendor/cm/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

-include device/google/marlin/marlin/device-xos.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := XOS_Sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 
TARGET_MANUFACTURER := google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:7.1.2/NJH47D/4045516:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 7.1.2 NJH47D 4045516 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
