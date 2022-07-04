#!/bin/bash

#允许ROOT编译
export FORCE_UNSAFE_CONFIGURE=1

#报错修复

cp /usr/bin/upx /workdir/openwrt/staging_dir/host/bin/
cp /usr/bin/upx-ucl /workdir/openwrt/staging_dir/host/bin/

ls

#修改登录IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

#修改主机名
#sed -i 's/OpenWrt/Xiaomi-Router/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/Redmi-Router/g' package/base-files/files/bin/config_generate

#修改型号显示
# sed -i 's/Xiaomi Redmi Router AC2100/Redmi AC2100/g' target/linux/ramips/dts/mt7621_xiaomi_redmi-router-ac2100.dts
# sed -i 's/Xiaomi Mi Router AC2100/Xiaomi AC2100/g' target/linux/ramips/dts/mt7621_xiaomi_mi-router-ac2100.dts

#修改登录密码为password
sed -i '/root/croot:$1$u4rpvVlw$oCaTlWcgSII4PSZQMXL9c.:19150:0:99999:7:::' package/base-files/files/etc/shadow

# 修改默认主题 argon
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci*/Makefile

# 删除文件传输
# rm -rf feeds/luci/applications/luci-app-filetransfer/

# 调整文件助手菜单
sed -i 's/nas/system/g' feeds/luci/applications/luci-app-fileassistant/luasrc/controller/*.lua
sed -i 's/nas/system/g' feeds/luci/applications/luci-app-fileassistant/luasrc/view/*.htm
