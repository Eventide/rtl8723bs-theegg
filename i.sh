#!/bin/bash
rmmod rtl8723bs
rmmod r8723bs
insmod `ls | grep bs.ko`
exit 0
