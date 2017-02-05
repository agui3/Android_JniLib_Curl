
LOCAL_PATH:= $(call my-dir)

CFLAGS := -Wpointer-arith -Wwrite-strings -Wunused -Winline \
 -Wnested-externs -Wmissing-declarations -Wmissing-prototypes -Wno-long-long \
 -Wfloat-equal -Wno-multichar -Wsign-compare -Wno-format-nonliteral \
 -Wendif-labels -Wstrict-prototypes -Wdeclaration-after-statement \
 -Wno-system-headers -DHAVE_CONFIG_H

include $(CLEAR_VARS)
include ../../src/lib/Makefile.inc

LOCAL_SRC_FILES := $(addprefix ../../src/lib/,$(CSOURCES))
#LOCAL_SRC_FILES := $(wildcard ../../src/*.cpp)\
					$(wildcard ../../SDKLib/*.cpp)
					
LOCAL_CFLAGS += $(CFLAGS)
LOCAL_C_INCLUDES += ../../src/include/ ../../src/lib

LOCAL_COPY_HEADERS_TO := libcurl
LOCAL_COPY_HEADERS := $(addprefix include/curl/,$(HHEADERS))

LOCAL_MODULE:= libcurl

include $(BUILD_SHARED_LIBRARY)

