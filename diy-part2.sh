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
#sed -i 's/geoip-only-cn-private.dat/geoip.dat/g' package/QiuSimons/openwrt-mosdns/v2ray-geodata/Makefile   # 修改geoip.dat
sed -i '16s/1/8/' feeds/luci/applications/luci-app-dockerman/luasrc/controller/dockerman.lua
sed -i 's/geoip-only-cn-private.dat/geoip.dat/g' feeds/packages/net/v2ray-geodata/Makefile   # 修改geoip.dat
#sed -i 's/43/45/' feeds/packages/net/smartdns/Makefile
#sed -i 's/2a5e7869603ecb7b0d94e153d938e798f0b8f260cc6062cc095a39116386d8b3/b17d82738f3ae73f5a60ad25c824e1000c05a6d060d08ebd1ec295a2caa5b495/' feeds/packages/net/smartdns/Makefile 
#修改ddns启动，解决重启不能运行问题

sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci/Makefile   # 选择argon为默认主题
#sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci-nginx/Makefile   # 选择argon为默认主题
#sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci-ssl-nginx/Makefile   # 选择argon为默认主题


sed -i 's/+uhttpd +uhttpd-mod-ubus //g' feeds/luci/collections/luci/Makefile    # 删除uhttpd
#sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings    # 设置密码为空
#sed -i 's/PATCHVER:=5.4/PATCHVER:=5.10/g' target/linux/x86/Makefile   # x86机型,默认内核5.4，修改内核为5.10

