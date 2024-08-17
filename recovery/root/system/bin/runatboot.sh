#!/system/bin/sh


touch_class_path=/sys/class/touchscreen

touch_driver_path=

firmware_path=/vendor/firmware

module_path=/vendor/lib/modules


insmod $module_path/himax_v3_mmi_hx83102d.ko

exit 0