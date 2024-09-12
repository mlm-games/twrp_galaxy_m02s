ifeq ($(TARGET_DEVICE), m02s)

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)
endif