# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m02s device
$(call inherit-product, device/samsung/m02s/device.mk)

PRODUCT_DEVICE := m02s
PRODUCT_NAME := twrp_m02s
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := Galaxy M02s
