#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a04 device
$(call inherit-product, device/samsung/a04/device.mk)

# Inherit from wingcamera-samsung
$(call inherit-product, vendor/samsung/wing-camera-n26/wingcamera-samsung.mk)

TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_DEVICE := a04
PRODUCT_NAME := lineage_a04
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A04
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a04xx-user 14 UP1A.231005.007 A045FXXSCEYJ2 release-keys" \
    BuildFingerprint=samsung/a04xx/a04:14/UP1A.231005.007/A045FXXSCEYJ2:user/release-keys


