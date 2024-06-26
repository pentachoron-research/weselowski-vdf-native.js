# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := weselowski_vdf_bindings
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=weselowski_vdf_bindings' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++17 \
	-fexceptions

INCS_Debug := \
	-I/root/.cache/node-gyp/18.20.2/include/node \
	-I/root/.cache/node-gyp/18.20.2/src \
	-I/root/.cache/node-gyp/18.20.2/deps/openssl/config \
	-I/root/.cache/node-gyp/18.20.2/deps/openssl/openssl/include \
	-I/root/.cache/node-gyp/18.20.2/deps/uv/include \
	-I/root/.cache/node-gyp/18.20.2/deps/zlib \
	-I/root/.cache/node-gyp/18.20.2/deps/v8/include \
	-I$(srcdir)/node_modules/node-addon-api \
	-I$(srcdir)/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=weselowski_vdf_bindings' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++17 \
	-fexceptions

INCS_Release := \
	-I/root/.cache/node-gyp/18.20.2/include/node \
	-I/root/.cache/node-gyp/18.20.2/src \
	-I/root/.cache/node-gyp/18.20.2/deps/openssl/config \
	-I/root/.cache/node-gyp/18.20.2/deps/openssl/openssl/include \
	-I/root/.cache/node-gyp/18.20.2/deps/uv/include \
	-I/root/.cache/node-gyp/18.20.2/deps/zlib \
	-I/root/.cache/node-gyp/18.20.2/deps/v8/include \
	-I$(srcdir)/node_modules/node-addon-api \
	-I$(srcdir)/include

OBJS := \
	$(obj).target/$(TARGET)/src/vdf-bindings.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/nothing.a $(obj).target/node_modules/node-addon-api/nothing.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-Wl,-rpath,'$$ORIGIN/' \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-Wl,-rpath,'$$ORIGIN/' \
	-m64

LIBS := \
	-L/root/highlayerd/weselowski-vdf-native.js/include \
	-lvdf

$(obj).target/weselowski_vdf_bindings.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/weselowski_vdf_bindings.node: LIBS := $(LIBS)
$(obj).target/weselowski_vdf_bindings.node: TOOLSET := $(TOOLSET)
$(obj).target/weselowski_vdf_bindings.node: $(OBJS) $(obj).target/node_modules/node-addon-api/nothing.a FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/weselowski_vdf_bindings.node
# Add target alias
.PHONY: weselowski_vdf_bindings
weselowski_vdf_bindings: $(builddir)/weselowski_vdf_bindings.node

# Copy this to the executable output path.
$(builddir)/weselowski_vdf_bindings.node: TOOLSET := $(TOOLSET)
$(builddir)/weselowski_vdf_bindings.node: $(obj).target/weselowski_vdf_bindings.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/weselowski_vdf_bindings.node
# Short alias for building this executable.
.PHONY: weselowski_vdf_bindings.node
weselowski_vdf_bindings.node: $(obj).target/weselowski_vdf_bindings.node $(builddir)/weselowski_vdf_bindings.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/weselowski_vdf_bindings.node

