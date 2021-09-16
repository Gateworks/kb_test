################################################################################
#
# kb-test 
#
#################################################################################

KB_TEST_LICENSE = GPL-2.0+

define KB_TEST_EXTRACT_CMDS
        cp package/kb_test/* $(@D)/
endef

define KB_TEST_BUILD_CMDS
        (cd $(@D); $(TARGET_CC) -Wall -Os -s kb_test.c -o kb_test)
endef

define KB_TEST_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 755 $(@D)/kb_test $(TARGET_DIR)/bin/
endef

$(eval $(generic-package))
