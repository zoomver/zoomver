LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_MODULE_TAGS := optional

LOCAL_PACKAGE_NAME := MmsBlackListAddon

LOCAL_APK_LIBRARIES += Mms

LOCAL_JAVA_LIBRARIES += telephony-common

LOCAL_DEX_PREOPT := false

LOCAL_PROGUARD_ENABLED := disabled

#include $(BUILD_ADDON_PACKAGE)