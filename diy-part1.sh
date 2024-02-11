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


#git clone https://github.com/sirpdboy/luci-app-advanced package/sirpdboy/luci-app-advanced
#git clone https://github.com/yichya/luci-app-xray package/yichya/luci-app-xray

rm -rf feeds/luci/themes/luci-theme-edge
rm -rf feeds/luci/themes/luci-theme-argon

git clone https://github.com/kiddin9/luci-theme-edge package/kiddin9/luci-theme-edge
git clone -b js https://github.com/gngpp/luci-theme-design feeds/luci/themes/luci-theme-design
git clone https://github.com/jerrykuku/luci-theme-argon feeds/luci/themes/luci-theme-argon
git clone -b js https://github.com/sirpdboy/luci-theme-kucat package/kiddin9/luci-theme-kucat

rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf feeds/packages/net/mosdns

git clone -b openwrt https://github.com/pianranjinghong/openwrt-packages package/pianranjinghong
git clone https://github.com/sbwml/luci-app-mosdns package/sbwml/luci-app-mosdns
git clone https://github.com/sbwml/v2ray-geodata feeds/packages/net/v2ray-geodata
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt package/messense/aliyundrive-webdav
git clone https://github.com/xiaorouji/openwrt-passwall2 package/xiaorouji/openwrt-passwall2
git clone https://github.com/pymumu/luci-app-smartdns feeds/luci/applications/luci-app-smartdns
git clone https://github.com/kiddin9/luci-app-advancedplus package/kiddin9/luci-app-advancedplus

# curl/8.5.0 - fix passwall `time_pretransfer` check
rm -rf feeds/packages/net/curl
git clone https://github.com/sbwml/feeds_packages_net_curl feeds/packages/net/curl

