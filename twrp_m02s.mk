
# Takes from this file's removing .mk and 'twrp_' but does not work for workflow action.
DEVICE_CODENAME := $(lastword $(subst /, ,$(lastword $(subst _, ,$(firstword $(subst ., ,$(MAKEFILE_LIST)))))))


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

#vendor/pb/config/common.mk for PBRP

# Inherit from m02s device
$(call inherit-product, device/samsung/m02s/device.mk)

#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/m02s/recovery/root/vendor/firmware,recovery/root/vendor/firmware)

PRODUCT_DEVICE := m02s
PRODUCT_NAME := twrp_m02s
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := Galaxy M02s
