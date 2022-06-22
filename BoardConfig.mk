#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6150-common
include device/xiaomi/sm6150-common/BoardConfigCommon.mk

BUILD_BROKEN_DUP_RULES := true

DEVICE_PATH := device/xiaomi/tucana

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/hidl/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := tucana_defconfig

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4831838208
BOARD_SYSTEM_EXTIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 117121724416
BOARD_VENDORIMAGE_PARTITION_SIZE := 2147483648

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_METADATA_PARTITION := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Screen density
TARGET_SCREEN_DENSITY := 440

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Udfps
TARGET_SURFACEFLINGER_UDFPS_LIB := //hardware/xiaomi:libudfps_extension.xiaomi
TARGET_USES_FOD_ZPOS := true

# Inherit from proprietary files
include vendor/xiaomi/tucana/BoardConfigVendor.mk
