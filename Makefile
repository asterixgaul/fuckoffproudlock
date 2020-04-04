FINALPACKAGE=1
export TARGET = iPhone:13.0:13.0

ARCHS = arm64 arm64e
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FuckOffProudLock
FuckOffProudLock_FILES = Tweak.xm
FuckOffProudLock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
after-uninstall::
	uninstall.exec "killall -9 SpringBoard"
