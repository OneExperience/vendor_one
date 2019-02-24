# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL
CUSTOM_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

ifeq ($(IS_GO_VERSION), true)
CUSTOM_VERSION := AndroidOneExperience_go_$(CUSTOM_BUILD)-$(PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
ROM_FINGERPRINT := AndroidOneExperience_go/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)
else
CUSTOM_VERSION := AndroidOneExperience_$(CUSTOM_BUILD)-$(PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
ROM_FINGERPRINT := AndroidOneExperience/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)
endif

CUSTOM_PROPERTIES := \
    org.androidoneexperience.version=$(CUSTOM_VERSION) \
    org.androidoneexperience.build_date=$(CUSTOM_BUILD_DATE) \
    org.androidoneexperience.build_type=$(CUSTOM_BUILD_TYPE) \
    org.androidoneexperience.fingerprint=$(ROM_FINGERPRINT)
