LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_MODULE_TAGS := optional

LOCAL_PACKAGE_NAME := VideoCmcc

LOCAL_APK_LIBRARIES += Gallery2

LOCAL_DEX_PREOPT := false

LOCAL_SDK_VERSION :=current

LOCAL_JAVA_LIBRARIES := sprd-support-addon

LOCAL_PROGUARD_ENABLED := disabled

include $(BUILD_ADDON_PACKAGE)
