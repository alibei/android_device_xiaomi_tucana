#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tucana device
$(call inherit-product, device/xiaomi/tucana/device.mk)

# Inherit some common Cipher stuff.
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
CIPHER_MAINTAINER := alibei
CIPHER_BLUR := true
CIPHER_BATTERY := 5260
CIPHER_SCREEN := 6.47

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cipher_tucana
PRODUCT_DEVICE := tucana
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
