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
#rm -rf feeds/packages/admin/netdata
#rm -rf feeds/luci/applications/luci-app-netdata
#git clone https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon


#git clone https://github.com/jerrykuku/luci-app-vssr package/jerrykuku/luci-app-vssr
#svn export --force https://github.com/kiddin9/openwrt-packages/trunk/luci-app-netspeedtest package/kiddin9/luci-app-netspeedtest
#git clone https://github.com/sirpdboy/netspeedtest.git package/sirpdboy/netspeedtest
#git clone https://github.com/sirpdboy/luci-app-netdata feeds/luci/applications/luci-app-netdata
#git clone https://github.com/sirpdboy/luci-app-advanced package/sirpdboy/luci-app-advanced
#svn export --force https://github.com/kiddin9/openwrt-packages/trunk/netdata feeds/packages/admin/netdata
#git clone https://github.com/yichya/luci-app-xray package/yichya/luci-app-xray

rm -rf feeds/luci/themes/luci-theme-edge
rm -rf feeds/packages/net/v2ray-geodata
git clone https://github.com/pianranjinghong/openwrt-packages package/pianranjinghong
git clone https://github.com/sbwml/luci-app-mosdns package/sbwml/luci-app-mosdns
git clone https://github.com/sbwml/v2ray-geodata feeds/packages/net/v2ray-geodata
svn export --force https://github.com/sundaqiang/openwrt-packages-backup/branches/main/luci/applications/luci-app-rebootschedule package/sundaqiang/luci-app-rebootschedule
mv package/pianranjinghong/luci-app-easyupdate/po/zh-cn package/pianranjinghong/luci-app-easyupdate/po/zh_Hans
git clone https://github.com/kiddin9/luci-theme-edge package/kiddin9/luci-theme-edge
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt package/messense/aliyundrive-webdav
git clone https://github.com/xiaorouji/openwrt-passwall2 package/xiaorouji/openwrt-passwall2
#git clone https://github.com/QiuSimons/openwrt-mos package/QiuSimons/openwrt-mosdns
rm -rf feeds/packages/net/mosdns
git clone -b js https://github.com/gngpp/luci-theme-design package/gngpp/luci-theme-design
#rm -rf package/QiuSimons/openwrt-mosdns/v2ray-geodata

