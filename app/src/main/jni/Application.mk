# ndk-build V=1
APP_CFLAGS += -Wno-error=format-security -O3
APP_ABI := armeabi-v7a x86
# arm64-v8a x86_64 # armeabi x86 mips
APP_PLATFORM := android-8
APP_MODULES := glib-2.0 ticables2-1.3.3 ticonv-1.1.3 tifiles2-1.1.5 ticalcs2-1.1.7 tiemu-3.03 tilem-2.0 wrapper
