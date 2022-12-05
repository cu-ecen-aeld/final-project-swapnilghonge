#TODO: Fill up the contents below in order to reference your assignment 3 git contents
TEMP_VERSION = '2c5b45697f93462dd0cb913494f18d95ef48c79b'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
TEMP_SITE = 'https://github.com/swapnilghonge/AESD_swapnil_sricharan_shared'
TEMP_SITE_METHOD = git
TEMP_GIT_SUBMODULES = YES

define TEMP_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/tmp all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define TEMP_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/tmp/tmp $(TARGET_DIR)/usr/bin
	
endef

$(eval $(generic-package))
