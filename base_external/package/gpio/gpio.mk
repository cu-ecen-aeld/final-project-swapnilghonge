#TODO: Fill up the contents below in order to reference your assignment 3 git contents
GPIO_VERSION = '4473fab4a66b4a3cc3ff2fa019cf4388ad2f3dc1'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
GPIO_SITE = 'https://github.com/swapnilghonge/AESD_swapnil_sricharan_shared'
GPIO_SITE_METHOD = git
GPIO_GIT_SUBMODULES = YES

define GPIO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/gpio all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define GPIO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/gpio/gpio_test.sh $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
