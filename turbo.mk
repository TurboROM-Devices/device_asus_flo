# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration 
$(call inherit-product, vendor/turbo/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/turbo/config/nfc_enhanced.mk)

PRODUCT_NAME := turbo_flo
PRODUCT_DEVICE := flo
PRODUCT_BRAND := Android
PRODUCT_MODEL := Nexus 7 2013
PRODUCT_MANUFACTURER := ASUS
PRODUCT_RESTRICT_VENDOR_FILES := false

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/flo/device.mk)
$(call inherit-product-if-exists, vendor/asus/flo/device-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razor \
    BUILD_FINGERPRINT=google/razor/flo:6.0.1/MMB29Q/2480792:user/release-keys \
    PRIVATE_BUILD_DESC="razor-user 6.0.1 MMB29Q 2480792 release-keys"
