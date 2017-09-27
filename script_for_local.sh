#!/bin/bash
if [ `id -u` != "0" ] ; then
        echo "Please run with sudo right."
	exit 1
fi

setsebool -P secure_mode_insmod 1
setsebool -P secoure_mode_policyload 1
setsebool -P user_tcp_server 1 
setsebool -P spamassassin_can_network 1
setsebool -P cdrecord_read_content 1
setsebool -P allow_ssh_keysign 1
setsebool -P keygen_disable_trans 1

