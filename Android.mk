LOCAL_PATH := $(call my-dir)

ifneq ($(filter m02s,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
