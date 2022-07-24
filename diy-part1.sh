#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
git clone https://github.com/sundaqiang/openwrt-packages package/sundaqiang
git clone https://github.com/QiuSimons/openwrt-mos package/QiuSimons/openwrt-mosdns
#git clone https://github.com/sbwml/luci-app-mosdns package/sbwml/luci-app-mosdns
#git clone https://github.com/sbwml/v2ray-geodata package/sbwml/luci-app-mosdns/v2ray-geodata
git clone https://github.com/kiddin9/openwrt-bypass package/kiddin9/openwrt-bypass
git clone https://github.com/xiaorouji/openwrt-passwall2 package/xiaorouji/openwrt-passwall2
git clone -b packages https://github.com/xiaorouji/openwrt-passwall package/xiaorouji/openwrt-passwall
#git clone https://github.com/jerrykuku/luci-app-vssr package/jerrykuku/luci-app-vssr
git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/xiaorouji/openwrt-passwall-luci
svn export --force https://github.com/kiddin9/openwrt-packages/trunk/luci-app-netspeedtest package/kiddin9/luci-app-netspeedtest
svn export --force https://github.com/sundaqiang/openwrt-packages-backup/branches/main/luci/applications/luci-app-rebootschedule package/sundaqiang/luci-app-rebootschedule
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/pymumu/luci-app-smartdns

rm -rf package/xiaorouji/openwrt-passwall/v2ray-geodata   # 删除v2ray-geodata
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/v2ray-geodata
