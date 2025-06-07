#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate   # 修改默认ip
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate    # 修改主机名
sed -i 's/ImmortalWrt/OpenWrt/g' include/version.mk    # 修改版本名
sed -i 's/\/bin\/ash/\/bin\/bash/' package/base-files/files/etc/passwd    # 替换终端为bash
sed -i '16s/1/8/' feeds/luci/applications/luci-app-dockerman/luasrc/controller/dockerman.lua
sed -i 's/geoip-only-cn-private.dat/geoip.dat/g' feeds/packages/net/v2ray-geodata/Makefile   # 修改geoip.dat 
sed -i 's/--set=llvm.download-ci-llvm=true/--set=llvm.download-ci-llvm=false/' feeds/packages/lang/rust/Makefile   # 修复rust编译失败


sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-light/Makefile   # 选择argon为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-nginx/Makefile   # 选择argon为默认主题


sed -i 's/+uhttpd +uhttpd-mod-ubus //g' feeds/luci/collections/luci-light/Makefile    # 删除uhttpd
#sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings    # 设置密码为空
#sed -i 's/PATCHVER:=5.4/PATCHVER:=5.10/g' target/linux/x86/Makefile   # x86机型,默认内核5.4，修改内核为5.10

