
#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2020-2021 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="m02s"
#set -o xtrace

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
		export ALLOW_MISSING_DEPENDENCIES=true
		export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
		export LC_ALL="C"
		#export OF_VANILLA_BUILD=0
		export FOX_VANILLA_BUILD=1
		export FOX_NO_SAMSUNG_SPECIAL=0
		#export FOX_DYNAMIC_SAMSUNG_FIX=1
		#export FOX_REMOVE_AAPT=1
		#export FOX_REMOVE_BASH=1
		# export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/by-name/recovery"

		# Extra build vars
		#export FOX_REPLACE_BUSYBOX_PS=1
		#export FOX_REPLACE_TOOLBOX_GETPROP=1
		export FOX_USE_TAR_BINARY=1
		export FOX_USE_NANO_EDITOR=1
		#export OF_USE_MAGISKBOOT=1
		#export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
		#export FOX_RESET_SETTINGS=0
		#export FOX_DELETE_AROMAFM=1
		export OF_FL_PATH1="/sys/class/leds/led:switch_1"
		#export OF_FL_PATH2=""
		#export OF_FLASHLIGHT_ENABLE=1
		export FOX_VERSION="R12.1_1"
		export OF_SCREEN_H="2000"
		export OF_HIDE_NOTCH=1
		export OF_CLOCK_POS=1
		export TARGET_ARCH=arm64
		#export OF_ALLOW_DISABLE_NAVBAR=0
		export TARGET_DEVICE_ALT="a02qnaxx,a02s, a025g, a025f, a02q, m02s, m025f, m025g, m02q"
		export FOX_TARGET_DEVICES="a02s, a025g, a025f, a02q"
		#export OF_USE_SYSTEM_FINGERPRINT=1
		#export OF_USE_TWRP_SAR_DETECT=1
		export OF_QUICK_BACKUP_LIST="/super;/boot;/vbmeta;/vbmeta_samsung;/dtbo;"
		#export FOX_USE_UNZIP_BINARY=1
		export FOX_ENABLE_APP_MANAGER=1
		export FOX_USE_XZ_UTILS=1
		export OF_STATUS_INDENT_LEFT="48"
		export OF_STATUS_INDENT_RIGHT="48"
		export OF_STATUS_H="72"
		export OF_USE_GREEN_LED=0
		export OF_SUPPORT_PRE_FLASH_SCRIPT=1
		export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
		export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
		export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
		export OF_PATCH_AVB20=1

		#R11
		#export FOX_R11=1
		#export FOX_BUILD_TYPE=Beta

		# maximum permissible splash image size (in kilobytes); do *NOT* increase!
		export OF_SPLASH_MAX_SIZE=104

		# run a process after formatting data to work-around MTP issues
		export OF_RUN_POST_FORMAT_PROCESS=1

		# Custom pic for maintainer's about section info
		export OF_MAINTAINER_AVATAR="$PWD/device/samsung/m02s/maintainer.png"
		export OF_MAINTAINER="MLM-Games"

		#prevent adb and mtp prior to entering recovery
		export OF_ADVANCED_SECURITY=1

		#delete installer zip debug before release
		

		# let's see what are our build VARs
		if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
		  export | grep "FOX" >> $FOX_BUILD_LOG_FILE
		  export | grep "OF_" >> $FOX_BUILD_LOG_FILE
		  export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
		  export | grep "TW_" >> $FOX_BUILD_LOG_FILE
		fi
fi


