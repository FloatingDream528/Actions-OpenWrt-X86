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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#添加额外软件包
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
git clone https://github.com/fw876/helloworld.git package/helloworld
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall/
#删除passwall重复组件
rm -rf package/passwall/naiveproxy
rm -rf package/passwall/shadowsocks-rust
rm -rf package/passwall/shadowsocksr-libev
rm -rf package/passwall/simple-obfs
rm -rf package/passwall/tcping
rm -rf package/passwall/trojan
rm -rf package/passwall/v2ray-core
rm -rf package/passwall/v2ray-geodata
rm -rf package/passwall/v2ray-plugin
rm -rf package/passwall/xray-core
rm -rf package/passwall/xray-plugin