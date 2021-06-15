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

#移除不用软件包
rm -rf package/lean/luci-lib-docker
#添加额外软件包
git clone https://github.com/lisaac/luci-lib-docker.git package/lean/luci-lib-docker
#自定义设置
sed -i '32d' package/lean/default-settings/files/zzz-default-settings
sed -i 's/hd0/hd1/g' package/boot/grub2/files/grub-early.cfg
