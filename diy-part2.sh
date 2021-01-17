#!/bin/bash
# 修改默认主机名
sed -i 's/OpenWrt/newifi3/g' ./package/base-files/files/bin/config_generate

# 修改默认管理IP
sed -i 's/192.168.1.1/192.168.99.1/g' ./package/base-files/files/bin/config_generate

# 将lede默认密码修改为空
sed -i 's/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/root:$1$Jy9UE4c1$U91zEoCVSdowSF4aZk.0z.:16821:0:99999:7:::/g' ./package/lean/default-settings/files/zzz-default-settings
