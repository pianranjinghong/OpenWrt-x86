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

# ------------------PassWall 科学上网--------------------------
# 移除 openwrt feeds 自带的核心库
#rm -rf feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box,pdnsd-alt,brook,chinadns-ng,dns2socks,dns2tcp,gn,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan,trojan-go,trojan-plus,tuic-client,v2ray-plugin,xray-plugin,gn}
# 核心库
#git clone https://github.com/xiaorouji/openwrt-passwall-packages package/passwall-packages

#rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/applications/luci-app-smartdns

git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
git clone https://github.com/pianranjinghong/v2ray-geodata feeds/packages/net/v2ray-geodata
#git clone https://github.com/xiaorouji/openwrt-passwall feeds/luci/applications/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall2 package/xiaorouji/luci-app-passwall2
git clone -b openwrt https://github.com/pianranjinghong/openwrt-packages package/pianranjinghong
#git clone -b v5 https://github.com/sbwml/luci-app-mosdns package/sbwml/luci-app-mosdns

rm -rf package/xiaorouji/luci-app-passwall2/luci-app-passwall2/htdocs
#git clone https://github.com/pymumu/luci-app-smartdns feeds/luci/applications/luci-app-smartdns

