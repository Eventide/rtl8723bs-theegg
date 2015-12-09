#!/bin/bash

MODULE_NAME=r8723bs
MODDESTDIR=/lib/modules/4.1.8-yocto-standard/kernel/drivers/net/wireless/

install -p -m 644 $(MODULE_NAME).ko  $(MODDESTDIR)
cp -f rtl8723bs_nic.bin /lib/firmware/rtlwifi/rtl8723bs_nic.bin
cp -f rtl8723bs_wowlan.bin /lib/firmware/rtlwifi/rtl8723bs_wowlan.bin
/sbin/depmod -a ${KVER}
