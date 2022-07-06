LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

JNI = $(LOCAL_PATH)/..
WRAPPER_TOP := $(JNI)/wrapper
TIEMU_TOP := $(JNI)/tiemu-3.03
CALCS_TOP := $(JNI)/libticalcs2-1.1.7
FILES_TOP := $(JNI)/libtifiles2-1.1.5
CONV_TOP := $(JNI)/libticonv-1.1.3
GLIB_TOP := $(JNI)/glib
CABLES_TOP := $(JNI)/libticables2-1.3.3
TILEM_TOP := $(JNI)/tilem-2.0

LOCAL_SRC_FILES:= wrappercommon.c \
tilemwrapper.c \
tiemuwrapper.c \
wrappercommonjni.c \
tiemuwrapperjni.c \
tilemwrapperjni.c \
wabbitvar.c\
wabbitlink.c\
bootimage.c

LOCAL_CFLAGS := \
    -I$(WRAPPER_TOP)	 \
    \
    -I$(GLIB_TOP)	\
    -I$(GLIB_TOP)/glib   \
    -I$(GLIB_TOP)/android	\
    \
    -I$(TIEMU_TOP)/src \
    -I$(TIEMU_TOP)/src/core \
    -I$(TIEMU_TOP)/src/core/ti_hw \
    -I$(TIEMU_TOP)/src/core/ti_sw	 \
    -I$(TIEMU_TOP)/src/core/dbg	 \
    -I$(TIEMU_TOP)/src \
    -I$(CABLES_TOP)/src \
    -I$(FILES_TOP)/src \
    -I$(CALCS_TOP)/src \
    -I$(CONV_TOP)/src\
    -I$(TILEM_TOP)/emu\
    -I$(TILEM_TOP)/gui\
    -O3 -v
   
LOCAL_MODULE:=wrapper

LOCAL_SHARED_LIBRARIES := glib-2.0 ticonv-1.1.3 ticables2-1.3.3 tifiles2-1.1.5 ticalcs2-1.1.7 tiemu-3.03 tilem-2.0

LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog

#include $(BUILD_STATIC_LIBRARY)
include $(BUILD_SHARED_LIBRARY)