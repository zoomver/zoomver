LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        SPRDVPXDecoder.cpp

LOCAL_C_INCLUDES := \
        $(TOP)/frameworks/av/media/libstagefright/include \
	$(TOP)/frameworks/native/include/media/hardware \
	$(TOP)/frameworks/native/include/ui \
	$(TOP)/frameworks/native/include/utils \
	$(TOP)/frameworks/native/include/media/hardware \
	$(TOP)/vendor/sprd/open-source/libs/libstagefrighthw/include \
	$(TOP)/vendor/sprd/open-source/libs/libstagefrighthw/include/openmax \
	$(TOP)/vendor/sprd/open-source/libs/libmemoryheapion \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL/usr/include/video 

ifeq ($(strip $(TARGET_GPU_PLATFORM)),midgard)
LOCAL_C_INCLUDES += $(TOP)/vendor/sprd/modules/libgpu/gralloc/midgard
else
LOCAL_C_INCLUDES += $(TOP)/vendor/sprd/modules/libgpu/gralloc/utgard
endif

LOCAL_CFLAGS := -DOSCL_EXPORT_REF= -DOSCL_IMPORT_REF=

LOCAL_ARM_MODE := arm

LOCAL_SHARED_LIBRARIES := \
        libstagefright libstagefright_omx libstagefright_foundation libstagefrighthw libutils  libui libmemoryheapion libdl liblog

LOCAL_MODULE := libstagefright_sprd_vpxdec
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))

