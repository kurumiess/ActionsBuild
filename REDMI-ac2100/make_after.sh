#!/bin/bash

# 调整文件助手菜单
sed -i 's/nas/system/g' package/feeds/luci/applications/luci-app-fileassistant/luasrc/controller/*.lua
sed -i 's/nas/system/g' package/feeds/luci/applications/luci-app-fileassistant/luasrc/view/*.htm
