#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
# 1. Premium Dark Theme aur Custom Background Theme Engine (Argon Layout)
git clone -b 18.06 https://github.com package/luci-theme-argon
git clone https://github.com package/luci-app-argon-config

# 2. Live Speed Meter aur Visual Performance Graphs (Jesa video me tha)
git clone https://github.com package/luci-app-netdata

# 3. Per-User Speed Control, Bandwidth Monitoring aur Block/Unblock Function
git clone https://github.com package/luci-app-eqos

# 4. Apka Custom System Naam (NGU-MUZAMMAL-TIKTOK) forced inject karne ke liye
sed -i 's/OpenWrt/MUZAMMAL-/g' package/base-files/files/bin/config_generate
