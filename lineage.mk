#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/young23g/device_young23g.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
	device/samsung/young23g/overlay \
	device/samsung/young23g/overlay_cm \

# Override build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device identifier
PRODUCT_DEVICE := young23g
PRODUCT_NAME := lineage_young23g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G130HN
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=young23gxx \
    TARGET_DEVICE=young23g \
    PRIVATE_BUILD_DESC="young23gxx-user 4.4.2 KOT49H G130HXXU0APB2 release-keys" \
    BUILD_FINGERPRINT="samsung/young23gxx/young23g:4.4.2/KOT49H/G130HXXU0APB2:user/release-keys"