include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=mruby
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_VERSION).zip
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/mruby/mruby/archive/
PKG_SOURCE_VERSION:=$(PKG_VERSION)

PKG_GEMBOX:=$(PKG_BUILD_DIR)/mrbgems/openwrt.gembox

include $(INCLUDE_DIR)/package.mk

define Package/mruby
  SUBMENU:=mruby
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Embeddable Ruby Language
  URL:=http://www.mruby.org
  MAINTAINER:=Daniel Bovensiepen <daniel@bovensiepen.net>
endef

define Package/mruby/description
  mruby is an embeddable version of the Ruby Programming language.
endef

define Package/mruby/config
  source "$(SOURCE)/Config.in"
endef

define Build/Configure
  (cd $(PKG_BUILD_DIR);\
  echo "MRuby::GemBox.new do |conf|" >> $(PKG_GEMBOX)\
  )

  # Add Binaries if selected

  ifeq ($(CONFIG_MRUBY_MIRB),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-bin-mirb\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_BIN),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-bin-mruby\"" >> $(PKG_GEMBOX)\
	)
  endif

  # Add Core GEMs if selected

  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_OBJECT_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-object-ext\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_EVAL),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-eval\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_STRUCT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-struct\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_NUMERIC_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-numeric-ext\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_ARRAY_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-array-ext\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_PROC_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-proc-ext\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_TOPLEVEL_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-toplevel-ext\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_RANDOM),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-random\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_MATH),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-math\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_SPRINTF),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-sprintf\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_FIBER),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-fiber\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_STRING_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-string-ext\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_EXIT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-exit\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_ENUM_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-enum-ext\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_RANGE_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-range-ext\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_STRING_UTF8),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-string-utf8\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_PRINT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-print\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_OBJECTSPACE),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-objectspace\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_HASH_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-hash-ext\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_TIME),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-time\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_MRUBY_SYMBOL_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-symbol-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  # Add External GEMs if selected
  ifeq ($(CONFIG_MRUBY_GEM_IO),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"FlowGroup/mruby-io\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_SOCKET),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"FlowGroup/mruby-socket\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_THREAD),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"FlowGroup/mruby-thread\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_RND),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"FlowGroup/mruby-simple-random\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_PROCESS),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"FlowGroup/mruby-process\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_PACK),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"FlowGroup/mruby-pack\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_ENV),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"FlowGroup/mruby-env\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_DIR),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"FlowGroup/mruby-dir\"" >> $(PKG_GEMBOX)\
	)
  endif
  ifeq ($(CONFIG_MRUBY_GEM_SLEEP),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"FlowGroup/mruby-sleep\"" >> $(PKG_GEMBOX)\
	)
  endif

  # Finalize Gembox

	(cd $(PKG_BUILD_DIR);\
	echo "end" >> $(PKG_GEMBOX)\
	)
endef

define Build/Compile
	(cd $(PKG_BUILD_DIR);\
	ARCH="$(ARCH)"\
	CC="$(CC)"\
	CFLAGS="$(CFLAGS)"\
	CXX="$(CXX)"\
	CXXFLAGS="$(CXXFLAGS)"\
	LD="$(CC)"\
	LDFLAGS="$(LDFLAGS)"\
	AR="$(AR)"\
	TARGET_CC="$(TARGET_CC)"\
	TARGET_CFLAGS="$(TARGET_CFLAGS)"\
	TARGET_CXX="$(TARGET_CXX)"\
	TARGET_CXXFLAGS="$(TARGET_CXXFLAGS)"\
	TARGET_LD="$(TARGET_CC)"\
	TARGET_LDFLAGS="$(TARGET_LDFLAGS)"\
	TARGET_AR="$(TARGET_AR)"\
	ruby ./minirake --verbose;\
	)
endef

define Package/mruby/install
  $(INSTALL_DIR) $(1)/usr/bin

  ifeq ($(CONFIG_MRUBY_MRBC),y)
	echo "Install 'mrbc'"
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/build/$(ARCH)/bin/mrbc $(1)/usr/bin/
  endif

  ifeq ($(CONFIG_MRUBY_MIRB),y)
	echo "Install 'mirb'"
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/build/$(ARCH)/bin/mirb $(1)/usr/bin/
  endif

  ifeq ($(CONFIG_MRUBY_BIN),y)
	echo "Install 'mruby'"
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/build/$(ARCH)/bin/mruby $(1)/usr/bin/
  endif
endef

$(eval $(call BuildPackage,mruby))

