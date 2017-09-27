#!/bin/bash
if [ `id -u` != "0" ] ; then
        echo "Please run with sudo right."
	exit 1
fi
setsebool -P postgresql_selinux_ddl 0
setsebool -P ftpd_full_access 0
setsebool -P ftpd_anon_write 0
setsebool -P ftpd_use_nfs 0
setsebool -P httpd_can_network_connect_db 0
setsebool -P httpd_can_network_connect 0
setsebool -P squid_connect_any 1
setsebool -P privoxy_connect_any 1
setsebool -P named_write_master_zones 0 
setsebool -P allow_nfsd_anon_write 0
setsebool -P allow_ftpd_use_nfs 1
setsebool -P nfs_export_all_ro 1
setsebool -P nfs_export_all_rw 1
setsebool -P samba_enable_home_dirs 0
setsebool -P samba_share_nfs 0
setsebool -P allow_httpd_mod_auth_pam 0
setsebool -P allow_httpd_sys_script_anon_write 0
setsebool -P webadm_manage_users_files 0
setsebool -P webadm_read_users_files 0
setsebool -P httpd_builtin_scripting 1
setsebool -P httpd_can_network_relay 0
setsebool -P httpd_enable_ftp_server 0
setsebool -P httpd_enable_homedirs 0
setsebool -P httpd_tty_comm 0
setsebool -P httpd_unified 0
setsebool -P httpd_enable_cgi 0
setsebool -P httpd_ssi_exec 0
setsebool -P allow_saslauthd_read_shadow 0


