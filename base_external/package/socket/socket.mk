#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SOCKET_VERSION = '648ac2c5270090a23da86a31ad73f627596f0cbf'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SOCKET_SITE = 'https://github.com/swapnilghonge/AESD_swapnil_sricharan_shared'
SOCKET_SITE_METHOD = git
SOCKET_GIT_SUBMODULES = YES

define SOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket_server all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/tmp all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/bme all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket_client all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/socket_server/server_socket $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/gpio/gpiotest.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/tmp/tmp $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/bme/bme $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/socket_client/client $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
