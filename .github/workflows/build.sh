repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

repo sync

git clone https://github.com/olzhas0986/device_twrp_munch device/xiaomi/munch
git clone https://github.com/kdrag0n/proton-clang --depth=1 prebuilts/clang/host/linux-x86/clang-13.0.0
git clone https://github.com/AOSPA/android_kernel_xiaomi_sm8250 --depth=1 kernel/xiaomi/munch

. b*/e* && export ALLOW_MISSING_DEPENDENCIES=true && lunch twrp_munch-eng && mka adbd bootimage
