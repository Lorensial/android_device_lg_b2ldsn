# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/lg/b2ldsn/lineage_b2ldsn.mk)

LOCAL_PATH := device/lg/magna

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=6.0.1/MRA58K/1619509518de2:user/release-keys PRIVATE_BUILD_DESC="d690_global_com-user 6.0 MRA58K 1619509518de2 release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="b2ldsn"

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_NAME := lineage_b2ldsn
PRODUCT_DEVICE := b2ldsn
PRODUCT_BRAND := LG
PRODUCT_MANUFACTURER := LG
PRODUCT_MODEL := d690

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Inherit some common CM stuff.

CM_BUILD := b2ldsn

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

$(call inherit-product, vendor/cm/config/common_full_phone.mk)
