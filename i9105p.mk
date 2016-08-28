# Include common makefile
$(call inherit-product, device/samsung/galaxys2plus-common/common.mk)

# NFC packages
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.bcm2079x.capri \
    NfcNci \
    Tag \
    com.android.nfc_extras

# NFC firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/bcm2079xB4_firmware_20793.ncd:system/vendor/firmware/bcm2079xB4_firmware_20793.ncd \
    $(LOCAL_PATH)/nfc/bcm2079xB4_pre_firmware_20793.ncd:system/vendor/firmware/bcm2079xB4_pre_firmware_20793.ncd

# NFC permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml
