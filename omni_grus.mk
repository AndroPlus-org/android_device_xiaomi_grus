# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_grus
PRODUCT_DEVICE := grus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 SE
PRODUCT_MANUFACTURER := Xiaomi

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/grus/grus:9/PKQ1.181121.001/V10.2.5.0.PFBCNXM:user/release-keys" \
    PRIVATE_BUILD_DESC="grus-user 9 PKQ1.181121.001 V10.2.5.0.PFBCNXM release-keys"

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    sys.usb.controller=a600000.dwc3 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=grus \
    PRODUCT_NAME=grus \
    TARGET_VENDOR_PRODUCT_NAME=grus \
    TARGET_VENDOR_DEVICE_NAME=grus
