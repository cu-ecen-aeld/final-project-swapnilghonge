#TODO: Fill up the contents below in order to reference your assignment 3 git contents
CLIENT_VERSION = '2a1660c876009371aadc22a6a849b3a6ab23de5a'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CLIENT_SITE = 'https://github.com/swapnilghonge/AESD_swapnil_sricharan_shared'
CLIENT_SITE_METHOD = git
CLIENT_GIT_SUBMODULES = YES

define CLIENT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket_client all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/socket_client/client $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
