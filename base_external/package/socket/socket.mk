#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SOCKET_VERSION = da04ee982cb84003bb3b4f413a6a42fd4c21ec72
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SOCKET_SITE = git@github.com:swapnilghonge/AESD_swapnil_sricharan_shared.git
SOCKET_SITE_METHOD = git
SOCKET_GIT_SUBMODULES = YES

define SOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/socket all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/socket/server_test $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
