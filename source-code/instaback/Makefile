ARCHS = arm64
TARGET = iphone:clang:latest:latest
INSTALL_TARGET_PROCESSES = Instagram

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = InstaBack
InstaBack_FILES = Tweak.x
InstaBack_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
