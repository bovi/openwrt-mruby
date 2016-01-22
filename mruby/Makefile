include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=mruby
PKG_VERSION:=head
PKG_RELEASE:=3
PKG_REV:=2723b10a01d5a1f50c174a6ec50582ae798aa9ae

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git://github.com/mruby/mruby.git
PKG_SOURCE_VERSION:=$(PKG_REV)

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
	(cd $(SOURCE);\
	cp build_config.rb $(PKG_BUILD_DIR)/build_config.rb\
	)

	(cd $(PKG_BUILD_DIR);\
	echo "MRuby::GemBox.new do |conf|" >> $(PKG_GEMBOX)\
	)

  # Add Binaries if selected

  ifeq ($(CONFIG_MRUBY_MIRB),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-bin-mirb\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_MRUBY),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-bin-mruby\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_STRIP),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-bin-strip\"" >> $(PKG_GEMBOX)\
	)
  endif


  # Add Core GEMs if selected

  ifeq ($(CONFIG_MRUBY_ARRAY_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-array-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_ENUM_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-enum-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_ENUM_LAZY),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-enum-lazy\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_ENUMERATOR),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-enumerator\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_EVAL),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-eval\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_EXIT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-exit\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_FIBER),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-fiber\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_HASH_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-hash-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_MATH),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-math\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_NUMERIC_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-numeric-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_OBJECT_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-object-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_OBJECTSPACE),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-objectspace\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_PRINT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-print\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_PROC_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-proc-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_RANDOM),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-random\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_RANGE_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-range-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_SPRINTF),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-sprintf\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_STRING_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-string-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_STRING_UTF8),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-string-utf8\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_STRUCT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-struct\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_SYMBOL_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-symbol-ext\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_TIME),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-time\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_TOPLEVEL_EXT),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :core => \"mruby-toplevel-ext\"" >> $(PKG_GEMBOX)\
	)
  endif


  # Add External GEMs if selected

  ifeq ($(CONFIG_MRUBY_IO),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"iij/mruby-io\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_SLEEP),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"matsumoto-r/mruby-sleep\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_SOCKET),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"iij/mruby-socket\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_PROCESS),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"iij/mruby-process\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_PACK),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"iij/mruby-pack\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_ENV),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"iij/mruby-env\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_DIR),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"iij/mruby-dir\"" >> $(PKG_GEMBOX)\
	)
  endif

  ifeq ($(CONFIG_MRUBY_MRICK),y)
	(cd $(PKG_BUILD_DIR);\
	echo "conf.gem :github => \"ximenzi/mruby-mrick\"" >> $(PKG_GEMBOX)\
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

  ifeq ($(CONFIG_MRUBY_MRUBY),y)
	echo "Install 'mruby'"
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/build/$(ARCH)/bin/mruby $(1)/usr/bin/
  endif

  ifeq ($(CONFIG_MRUBY_STRIP),y)
	echo "Install 'mruby-strip'"
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/build/$(ARCH)/bin/mruby-strip $(1)/usr/bin/
  endif
endef

$(eval $(call BuildPackage,mruby))
