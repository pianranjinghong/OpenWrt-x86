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
#sed -i 's/geoip-only-cn-private.dat/geoip.dat/g' package/QiuSimons/openwrt-mosdns/v2ray-geodata/Makefile   # 修改geoip.dat
sed -i '16s/1/8/' feeds/luci/applications/luci-app-dockerman/luasrc/controller/dockerman.lua
sed -i 's/geoip-only-cn-private.dat/geoip.dat/g' feeds/packages/net/v2ray-geodata/Makefile   # 修改geoip.dat 
sed -i 's/5.2.21/5.2.15/g' feeds/packages/utils/bash/Makefile
sed -i 's/c8e31bdc59b69aaffc5b36509905ba3e5cbb12747091d27b4b977f078560d5b8/13720965b5f4fc3a0d4b61dd37e7565c741da9a5be24edc2ae00182fc1b3588c/g' feeds/packages/utils/bash/Makefile
#sed -i 's/geoip-only-cn-private.dat/http/g' feeds/packages/utils/bash/Makefile


sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile   # 选择argon为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-nginx/Makefile   # 选择argon为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-ssl-nginx/Makefile   # 选择argon为默认主题

sed -i 's/+uhttpd +uhttpd-mod-ubus //g' feeds/luci/collections/luci-light/Makefile    # 删除uhttpd
#sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings    # 设置密码为空
#sed -i 's/PATCHVER:=5.4/PATCHVER:=5.10/g' target/linux/x86/Makefile   # x86机型,默认内核5.4，修改内核为5.10

