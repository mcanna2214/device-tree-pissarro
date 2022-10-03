#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pissarro device
$(call inherit-product, device/xiaomi/pissarro/device.mk)

PRODUCT_DEVICE := pissarro
PRODUCT_NAME := omni_pissarro
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := pissarro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pissarro-user 11 RP1A.200720.011 V12.5.18.0.RKTCNXM release-keys"

BUILD_FINGERPRINT := Redmi/pissarro/pissarro:11/RP1A.200720.011/V12.5.18.0.RKTCNXM:user/release-keys
