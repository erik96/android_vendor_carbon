# common
$(call inherit-product, vendor/liquid/config/common.mk)

# drm
$(call inherit-product, vendor/liquid/config/common_drm_phone.mk)

# audio
include frameworks/base/data/sounds/NewAudio.mk

# ringtones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

# packages
PRODUCT_PACKAGES += \
  Mms \
  Torch

# bluetooth
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip

