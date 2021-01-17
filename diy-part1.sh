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
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default


# 恢复两个被删除的软件源
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/kenzok8/small.git package/openwrt-small

# 替换 logo.png 和 favicon.ico
#oppt=$(pwd)
#cd ..
#mv -f favicon.ico openwrt/package/openwrt-packages/luci-theme-argon_new/htdocs/luci-static/argon_violet/
#mv -f logo.png openwrt/package/openwrt-packages/luci-theme-argon_new/htdocs/luci-static/argon_violet/
#cd $oppt

# openwrt-v2ray 软件源
#git clone https://github.com/kuoruan/openwrt-v2ray.git package/v2ray-core
#git clone -b luci2 https://github.com/kuoruan/luci-app-v2ray.git luci-app-v2ray
#git clone -b master --depth 1 https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx
