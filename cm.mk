# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

## Specify phone tech before including full_phone
$(call inherit-product, vendor/du/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := v410

# Inherit some common CM stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/v410/device_v410.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := v410
PRODUCT_NAME := du_v410
PRODUCT_BRAND := lge
PRODUCT_MODEL := v410
PRODUCT_MANUFACTURER := lge
