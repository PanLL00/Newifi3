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


# 修改默认主机名
sed -i 's/OpenWrt/NanoPi-R2S/g' ./package/base-files/files/bin/config_generate

# 修改默认管理IP
sed -i 's/192.168.1.1/192.168.2.1/g' ./package/base-files/files/bin/config_generate

# 将lede默认密码修改为空
sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root:$1$Jy9UE4c1$U91zEoCVSdowSF4aZk.0z.:16821:0:99999:7:::/g' ./package/lean/default-settings/files/zzz-default-settings

# 修改登陆界面中的提示语句
#sed -i 's/请输入用户名和密码/请输入密码/g' ./feeds/luci/modules/luci-base/po/zh-cn/base.po
#sed -i "s~无效的用户名和/或密码！~无效的密码！请重试。~g" ./feeds/luci/modules/luci-base/po/zh-cn/base.po

# 更改默认主题为 Argon_new
#sed -i 's/luci-theme-bootstrap/luci-theme-argon_new/g' ./feeds/luci/collections/luci/Makefile

# 关闭SYS红灯，减少光污染。
sed -i "2i uci set system.trigger='led'" ./package/lean/default-settings/files/zzz-default-settings
sed -i "3i uci set system.trigger.name='SYS'" ./package/lean/default-settings/files/zzz-default-settings
sed -i "4i uci set system.trigger.sysfs='nanopi-r2s:red:sys'" ./package/lean/default-settings/files/zzz-default-settings
sed -i "5i uci set system.trigger.default='0'" ./package/lean/default-settings/files/zzz-default-settings
sed -i "6i uci set system.trigger.trigger='cpu'" ./package/lean/default-settings/files/zzz-default-settings
sed -i "7i uci commit  system" ./package/lean/default-settings/files/zzz-default-settings
