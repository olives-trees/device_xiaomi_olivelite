#
# Copyright (C) 2021 The NusantaraOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common NusantaraOS stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Inherit from olivelite device
$(call inherit-product, device/xiaomi/olivelite/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := olivelite
PRODUCT_NAME := nad_olivelite
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Some build flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
USE_PIXEL_CHARGING := true
NAD_BUILD_TYPE ?= UNOFFICIAL
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false
USE_AOSP_CLOCK := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olivelite-user 10 QKQ1.191014.001 V12.5.5.0.QCMCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olivelite/olivelite:10/QKQ1.191014.001/V12.5.5.0.QCMCNXM:user/release-keys"
