USE_CAMERA_STUB := true

# inherit from the proprietary version
#-include vendor/lge/v410/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8226
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := v410
TARGET_BOOTLOADER_NAME=v410


# Kernel information
BOARD_CUSTOM_BOOTIMG_MK := device/lge/v410/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=e7lte ignore_loglevel
BOARD_KERNEL_BASE := 0x00000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_SOURCE := kernel/lge/v410
TARGET_KERNEL_CONFIG := e7lte_att_us_defconfig

# QCOM BSP
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

#BOARD_HAVE_BLUETOOTH := true

# Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#BOARD_USES_MMCUTILS := false
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true


# Storage
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 40
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12306087936
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# Audio
AUDIO_FEATURE_DISABLED_FM := false
AUDIO_FEATURE_DISABLED_SSR := true
BOARD_HAVE_QCOM_FM := true
AUDIO_FEATURE_DISABLED_ANC_HEADSET := true
AUDIO_FEATURE_DISABLED_DS1_DOLBY_DDP := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
TARGET_QCOM_MEDIA_VARIANT := caf-new

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Use qcom power hal
TARGET_POWERHAL_VARIANT := qcom
TARGET_USES_CPU_BOOST_HINT := true
BOARD_USES_QCOM_HARDWARE := true
TARGET_HW_DISK_ENCRYPTION := true

# SELinux
BOARD_SEPOLICY_DIRS += \
	device/lge/v410/sepolicy

#BOARD_SEPOLICY_UNION += \
#	adbd.te \
#	app.te \
#	bluetooth_loader.te \
#	bridge.te \
#	camera.te \
#	device.te \
#	dhcp.te \
#	dnsmasq.te \
#	domain.te \
#	drmserver.te \
#	file_contexts \
#	file.te \
#	hostapd.te \
#	init_shell.te \
#	init.te \
#	libqc-opt.te \
#	mediaserver.te \
#	mpdecision.te \
#	netd.te \
#	netmgrd.te \
#	nfc.te \
#	property_contexts \
#	property.te \
#	qcom.te \
#	qmux.te \
#	radio.te \
#	rild.te \
#	rmt.te \
#	sdcard_internal.te \
#	sdcardd.te \
#	sensors.te \
#	shell.te \
#	surfaceflinger.te \
#	system.te \
#	tee.te \
#	te_macros \
#	thermald.te \
#	ueventd.te \
#	vold.te \
#	wpa_supplicant.te \
#	zygote.te
#
#ifneq ($(TARGET_BUILD_VARIANT),user)
#	BOARD_SEPOLICY_UNION += su.te
#endif
