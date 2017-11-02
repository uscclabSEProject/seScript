#!/bin/bash
if [ `id -u` != "0" ] ; then
        echo "Please run with sudo right."
	exit 1
fi

setsebool -P secure_mode_insmod 0
setsebool -P secure_mode_policyload 0
setsebool -P user_tcp_server 0
setsebool -P spamassassin_can_network 0
setsebool -P cdrecord_read_content 0
setsebool -P allow_ssh_keysign 0
setsebool -P keygen_disable_trans 0

