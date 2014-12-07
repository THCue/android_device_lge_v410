$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/v410/v410-vendor.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/v410/overlay

LOCAL_PATH := device/lge/v410
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif


# Configs
PRODUCT_COPY_FILES += \
#    device/lge/v410/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
#    device/lge/v410/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
#    kernel/lge/msm8226/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
#    kernel/lge/msm8226/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
#    kernel/lge/msm8226/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
#    device/lge/v410/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
#    device/lge/v410/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
#    device/lge/v410/prebuilt/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
#    device/lge/v410/prebuilt/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
#    device/lge/v410/prebuilt/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
#    device/lge/v410/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
#    device/lge/v410/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
#    device/lge/v410/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
#    device/lge/v410/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
#    device/lge/v410/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
#    device/lge/v410/prebuilt/etc/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf \
#    device/lge/v410/prebuilt/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc \
#    device/lge/v410/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/v410/prebuilt/etc/init.zetaw.fm.sh:system/etc/init.zetaw.fm.sh \
    device/lge/v410/prebuilt/etc/init.zetaw.ssr.wifi.sh:system/etc/init.zetaw.ssr.wifi.sh \
    device/lge/v410/prebuilt/etc/init.zetaw.wifi.sh:system/etc/init.zetaw.wifi.sh \
    device/lge/v410/prebuilt/etc/init.crda.sh:system/etc/init.crda.sh \
    device/lge/v410/prebuilt/etc/init.zetaw.post_boot.sh:system/etc/init.zetaw.post_boot.sh \
#    device/lge/v410/prebuilt/etc/sap.conf:system/etc/sap.conf \
#    device/lge/v410/prebuilt/etc/gps.conf:system/etc/gps.conf \
#    device/lge/v410/prebuilt/etc/msap.conf:system/etc/msap.conf \
#    device/lge/v410/prebuilt/etc/clatd.conf:system/etc/clatd.conf \
#    device/lge/v410/prebuilt/etc/sec_config:system/etc/sec_config \
#    device/lge/v410/prebuilt/etc/izat.conf:system/etc/izat.conf \
#    device/lge/v410/prebuilt/etc/boot_fixup:system/etc/boot_fixup \
#    device/lge/v410/prebuilt/etc/nfc-nci.conf:system/etc/nfc-nci.conf \
#    device/lge/v410/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
#    device/lge/v410/prebuilt/etc/quipc.conf:system/etc/quipc.conf \


# Ramdisk
PRODUCT_COPY_FILES += \
    device/lge/v410/rootdir/fstab.e7lte:root/fstab.e7lte \
    device/lge/v410/rootdir/init.class_main.sh:root/init.class_main.sh \
    device/lge/v410/rootdir/init.lge.early.rc:root/init.lge.early.rc \
    device/lge/v410/rootdir/init.lge.rc:root/init.lge.rc \
    device/lge/v410/rootdir/init.mdm.sh:root/init.mdm.sh \
    device/lge/v410/rootdir/init.usb.rc:root/init.usb.rc \
    device/lge/v410/rootdir/init.e7lte.rc:root/init.e7lte.rc \
    device/lge/v410/rootdir/init.e7lte.usb.rc:root/init.e7lte.usb.rc \
    device/lge/v410/rootdir/init.e7lte_product.rc:root/init.e7lte_product.rc \
    device/lge/v410/rootdir/init.zetaw.bt_vendor.rc:root/init.zetaw.bt_vendor.rc \
    device/lge/v410/rootdir/init.zetaw.class_core.sh:root/init.zetaw.class_core.sh \
    device/lge/v410/rootdir/init.zetaw.cmm.usb.sh:root/init.zetaw.cmm.usb.sh \
    device/lge/v410/rootdir/init.zetaw.early_boot.sh:root/init.zetaw.early_boot.sh \
    device/lge/v410/rootdir/init.zetaw.factory.sh:root/init.zetaw.factory.sh \
    device/lge/v410/rootdir/init.zetaw.rc:root/init.zetaw.rc \
    device/lge/v410/rootdir/init.zetaw.ril.sh:root/init.zetaw.ril.sh \
    device/lge/v410/rootdir/init.zetaw.sh:root/init.zetaw.sh \
    device/lge/v410/rootdir/init.zetaw.ssr.sh:root/init.zetaw.ssr.sh \
    device/lge/v410/rootdir/init.zetaw.syspart_fixup.sh:root/init.zetaw.syspart_fixup.sh \
    device/lge/v410/rootdir/init.zetaw.usb.rc:root/init.zetaw.usb.rc \
    device/lge/v410/rootdir/init.zetaw.usb.sh:root/init.zetaw.usb.sh \
    device/lge/v410/rootdir/ueventd.e7lte.rc:root/ueventd.e7lte.rc \

# Utilities
PRODUCT_PACKAGES += \
    charge_only_mode \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    wcnss_service

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

# QC time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

#Softkeys
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_LOCALES := en_US
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_NAME := full_v410
PRODUCT_DEVICE := v410
