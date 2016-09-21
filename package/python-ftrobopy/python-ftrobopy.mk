################################################################################
#
# python-ftrobopy
#
################################################################################

PYTHON_FTROBOPY_VERSION = v0.98
PYTHON_FTROBOPY_SITE = $(call github,ftrobopy,ftrobopy,$(PYTHON_FTROBOPY_VERSION))
PYTHON_FTROBOPY_LICENSE = MIT
PYTHON_FTROBOPY_LICENSE_FILES = LICENSE
PYTHON_FTROBOPY_INSTALL_STAGING = NO
PYTHON_FTROBOPY_SETUP_TYPE = distutils

ifeq ($(BR2_PACKAGE_PYTHON),y)
PYTHON_FTROBOPY_DEPENDENCIES += python
else ifeq ($(BR2_PACKAGE_PYTHON3),y)
PYTHON_FTROBOPY_DEPENDENCIES += python3
endif

$(eval $(python-package))
