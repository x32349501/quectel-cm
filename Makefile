#
# Copyright (C) 2020 Sandy <fy@ixiot.net>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=quectel-CM
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/quectel-cm
  SECTION:=utils
  CATEGORY:=Network
  TITLE:=Quectel Connection networking program
  MAINTAINER:=Sandy <fy@ixiot.net>
  DEPENDS:=+libpthread +libdl
endef

define Package/quectel-cm/description
This package contains a utility that helps it connect to the network
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		CC="$(TARGET_CC)" \
		CFLAGS="$(TARGET_CFLAGS) -Wall"
endef

define Package/quectel-cm/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/quectel-CM $(1)/usr/bin/
endef

$(eval $(call BuildPackage,quectel-cm))
