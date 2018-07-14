APP_ABI := x86 x86_64 armeabi-v7a arm64-v8a
APP_CFLAGS := -std=gnu99 ${MAGISK_DEBUG} \
	-DMAGISK_VERSION="${MAGISK_VERSION}" -DMAGISK_VER_CODE=${MAGISK_VER_CODE} 
APP_CPPFLAGS := -std=c++11
APP_SHORT_COMMANDS := true
ifdef NEW_PLAT
APP_PLATFORM := android-21
else
APP_PLATFORM := android-16
APP_CFLAGS += -Wno-implicit-function-declaration
endif
