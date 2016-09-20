# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9105p/i9105p.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_i9105p
PRODUCT_DEVICE := i9105p
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9105P

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=s2vepxx \
    TARGET_DEVICE=s2vep \
    BUILD_FINGERPRINT="samsung/s2vepxx/s2vep:4.2.2/JDQ39/I9105PXXUBOB2:user/release-keys" \
    PRIVATE_BUILD_DESC="s2vepxx-user 4.2.2 JDQ39 I9105PXXUBOB2 release-keys"
