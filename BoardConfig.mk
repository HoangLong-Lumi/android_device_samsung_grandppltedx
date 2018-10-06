#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/grandppltedx
VENDOR_PATH := vendor/samsung/grandppltedx
BOARD_VENDOR := samsung

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := 
TARGET_2ND_ARCH_VARIANT := 
TARGET_2ND_CPU_ABI := 
TARGET_2ND_CPU_ABI2 :=  
TARGET_2ND_CPU_VARIANT := 

ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true

# Assert
TARGET_OTA_ASSERT_DEVICE := grandpplte,grandppltedx,grandpplteub,grandpplteser,grandppltedtvvj

# Audio
BOARD_USES_MTK_AUDIO := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
SUPPRESS_MTK_AUDIO_BLOB_ERR_MSG := true
TARGET_EXCLUDES_AUDIOFX := true

# Bluetooth
MTK_BT_SUPPORT := yes
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Bootloader / Platform
TARGET_BOOTLOADER_BOARD_NAME := MT6737T
TARGET_NO_BOOTLOADER := true
TARGET_SOC := mt6737t
TARGET_BOARD_PLATFORM := mt6737t
TARGET_NO_FACTORYIMAGE := true
TARGET_BOARD_PLATFORM_GPU := mali-T720mp2

# Build Flags
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Camera
USE_CAMERA_STUB := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true
TARGET_USES_NON_TREBLE_CAMERA := true
BOARD_USE_SAMSUNG_CAMERAFORMAT_YUV420SP := true

# Charger (borrow from herolte)
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_NO_CHARGER_LED := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# CMHW
BOARD_USES_LINEAGE_HARDWARE := true
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/lineagehw

# Display
USE_OPENGL_RENDERER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
BOARD_EGL_CFG := $(DEVICE_PATH)/configs/egl.cfg
OVERRIDE_RS_DRIVER := libRSDriver_mtk.so

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# HIDL Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := libinit_grandpplte

# Kernel
BOARD_CUSTOM_BOOTIMG := true

BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_SOURCE	:= kernel/samsung/grandppltedx
TARGET_KERNEL_CONFIG	:= mt6737t-grandpplte_defconfig
TARGET_PREBUILT_DTB	:= $(DEVICE_PATH)/prebuilt/dt.img

BOARD_KERNEL_CMDLINE	:= bootopt=64S3,32N2,32N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE	:= 0x3fffc000
BOARD_KERNEL_PAGESIZE	:= 2048
BOARD_RAMDISK_OFFSET	:= 0x04004000
BOARD_SECOND_OFFSET	:= 0x00f04000
BOARD_TAGS_OFFSET	:= 0x0e004000
BOARD_KERNEL_OFFSET	:= 0x00008000
BOARD_DT_SIZE		:= 485376
BOARD_NAME := SRPPI01A000KU

BOARD_MKBOOTIMG_ARGS := \
	--base $(BOARD_KERNEL_BASE) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--second_offset $(BOARD_SECOND_OFFSET) \
	--tags_offset $(BOARD_TAGS_OFFSET) \
	--board $(BOARD_NAME) \
	--dt $(TARGET_PREBUILT_DTB)

# Legacy BLOB Support
TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /system/vendor/bin/hw/rild=27

# MTK
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

MTK_PROJECT_CONFIG ?= $(DEVICE_PATH)/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)

# Flags
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_NO_SECURE_DISCARD := true
BOARD_DISABLE_HW_ID_MATCH_CHECK := true

# Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Lights
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_HAS_BACKLIT_KEYS := false
TARGET_PROVIDES_LIBLIGHT := true

# Media - OMX
BOARD_CANT_REALLOCATE_OMX_BUFFERS := true
BOARD_USES_MTK_MEDIA_PROFILES := true
MTK_MEDIA_PROFILES := true
TARGET_OMX_LEGACY_RESCALING := true

# Netd
TARGET_NEEDS_NETD_DIRECT_CONNECT_RULE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3229614080
BOARD_CACHEIMAGE_PARTITION_SIZE := 52428800
BOARD_VENDORIMAGE_PARTITION_SIZE := 419430400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3900702720
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_COPY_OUT_VENDOR := vendor

# Power HAL
TARGET_POWERHAL_VARIANT := mtk
TARGET_POWERHAL_SET_INTERACTIVE_EXT := $(DEVICE_PATH)/power/power.c

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.mt6735

# RIL
ENABLE_VENDOR_RIL_SERVICE := true
BOARD_PROVIDES_RILD := true

# Seccomp
BOARD_SECCOMP_POLICY += $(DEVICE_PATH)/seccomp

# SEPolicy
BOARD_SEPOLICY_DIRS := $(DEVICE_PATH)/sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

# System Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Shims
TARGET_LD_SHIM_LIBS := \
	/vendor/bin/mtk_agpsd|libshim_gps.so \
	/vendor/bin/mtk_agpsd|libshim_agpsd.so \
	/vendor/lib/libcam.utils.sensorlistener.so|libandroid.so \
	/vendor/lib/libcam_utils.so|libshim_nv21e_camera.so \
	/vendor/lib/libcam_utils.so|libshim_camera.so \
	/vendor/lib/libcam_utils.so|libshim_gui.so \
	/system/lib/liblog.so|libshim_xlog.so \
	/vendor/lib/libui_ext.so|libshim_gui.so \
	/vendor/lib/libgui_ext.so|libshim_gui.so \
	/vendor/lib/libaudio_param_parser.so|libshim_gps.so \
	/vendor/lib/audio.primary.mt6737t.so|libshim_audio.so \
	/vendor/bin/thermal|libshim_ifc.so \
	/vendor/lib/libdpframework.so|libshim_xlog.so

LD_PRELOADS += mtk_symbols.so

# Wifi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0
WIFI_HIDL_FEATURE_DISABLE_AP_MAC_RANDOMIZATION := true

# W - Misc
ENABLE_WEBGL := true
EXTENDED_FONT_FOOTPRINT := true
MALLOC_SVELTE := true
TARGET_FORCE_CPU_UPLOAD := true
USE_MINIKIN := true
WITHOUT_CHECK_API := true

#-- Disable ODEX
#-- not buildable on Jammy
WITH_DEXPREOPT := false
DONT_DEXPREOPT_PREBUILTS := true
