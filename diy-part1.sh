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
svn export --force https://github.com/sundaqiang/openwrt-packages-backup/branches/main/luci/applications/luci-app-rebootschedule package/sundaqiang/luci-app-rebootschedule
git clone https://github.com/kiddin9/openwrt-bypass package/kiddin9/openwrt-bypass

