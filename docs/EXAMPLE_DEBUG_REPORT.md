# TS3tools TS3UpdateScript Debug Report

Date and time of report: 20160820-0439
TS3UpdateScript Installation Path: /root/TS3UpdateScript
TS3UpdateScript Version: 5.0.1
TS3UpdateScript Parameters: --check

## TS3UpdateScript output

Please copy and paste the output of the shell below this line and/or attach a debug file of this script.

## Operating System Details

Distributor ID:	Ubuntu
Description:	Ubuntu 14.04.4 LTS
Release:	14.04
Codename:	trusty

Linux ubuntu1404 4.4.12-040412-generic #201606011712 SMP Wed Jun 1 21:14:23 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux

### root User locale

LANG=de_DE.UTF-8
LANGUAGE=
LC_CTYPE="de_DE.UTF-8"
LC_NUMERIC="de_DE.UTF-8"
LC_TIME="de_DE.UTF-8"
LC_COLLATE="de_DE.UTF-8"
LC_MONETARY="de_DE.UTF-8"
LC_MESSAGES="de_DE.UTF-8"
LC_PAPER="de_DE.UTF-8"
LC_NAME="de_DE.UTF-8"
LC_ADDRESS="de_DE.UTF-8"
LC_TELEPHONE="de_DE.UTF-8"
LC_MEASUREMENT="de_DE.UTF-8"
LC_IDENTIFICATION="de_DE.UTF-8"
LC_ALL=

### teamspeak User locale

LANG=de_DE.UTF-8
LANGUAGE=
LC_CTYPE="de_DE.UTF-8"
LC_NUMERIC="de_DE.UTF-8"
LC_TIME="de_DE.UTF-8"
LC_COLLATE="de_DE.UTF-8"
LC_MONETARY="de_DE.UTF-8"
LC_MESSAGES="de_DE.UTF-8"
LC_PAPER="de_DE.UTF-8"
LC_NAME="de_DE.UTF-8"
LC_ADDRESS="de_DE.UTF-8"
LC_TELEPHONE="de_DE.UTF-8"
LC_MEASUREMENT="de_DE.UTF-8"
LC_IDENTIFICATION="de_DE.UTF-8"
LC_ALL=

## TS3 Update Details

Update path: 3.0.13.2 -> 3.0.13.3
Instance path: /home/teamspeak
Type Of Files Storage: Local disk
ServerQuery IP: 10.50.1.30
ServerQuery Port: 10011
Installed TS3 Server Version: 3.0.13.2
Installed TS3 Server Build: 1471255451
Installed TS3 Server Platform: Linux
TS3 Server Instance Log Path: /home/teamspeak/logs
TS3 Server Architecture: amd64
*nix Owner: teamspeak (UID 1003)
*nix Group: teamspeak (GID 1003)
Database Type: SQLite
Update Text (Manually): The server will be updated to the version 3.0.13.3 right now.
Update Text (Cronjob): The server will be updated to version 3.0.13.3 in 5 minutes.
Ignore Clients: 1,
Ignore ServerGroups: 1,2,

## INI Files

### ts3server.ini

machine_id=
default_voice_port=9987
voice_ip=10.50.1.30
licensepath=
filetransfer_port=30033
filetransfer_ip=10.50.1.30
query_port=10011
query_ip=10.50.1.30
query_ip_whitelist=query_ip_whitelist.txt
query_ip_blacklist=query_ip_blacklist.txt
dbplugin=ts3db_sqlite3
dbpluginparameter=
dbsqlpath=sql/
dbsqlcreatepath=create_sqlite/
dbconnections=10
logpath=logs
logquerycommands=0
dbclientkeepdays=30
logappend=0
query_skipbruteforcecheck=0

### Database INI-file

Database INI-file does not exist

## Log files

### Instance Log file

﻿2016-08-20 02:39:14.006142|INFO    |ServerLibPriv |   |TeamSpeak 3 Server 3.0.13.2 (2016-08-15 10:04:11)
2016-08-20 02:39:14.006334|INFO    |ServerLibPriv |   |SystemInformation: Linux 4.4.12-040412-generic #201606011712 SMP Wed Jun 1 21:14:23 UTC 2016 x86_64 Binary: 64bit
2016-08-20 02:39:14.006374|INFO    |ServerLibPriv |   |Using hardware aes
2016-08-20 02:39:14.007161|INFO    |DatabaseQuery |   |dbPlugin name:    SQLite3 plugin, Version 3, (c)TeamSpeak Systems GmbH
2016-08-20 02:39:14.007201|INFO    |DatabaseQuery |   |dbPlugin version: 3.11.1
2016-08-20 02:39:14.007433|INFO    |DatabaseQuery |   |checking database integrity (may take a while)
2016-08-20 02:39:14.025233|WARNING |Accounting    |   |Unable to find valid license key, falling back to limited functionality
2016-08-20 02:39:16.324058|INFO    |              |   |Puzzle precompute time: 2266
2016-08-20 02:39:16.324495|INFO    |FileManager   |   |listening on 10.50.1.30:30033
2016-08-20 02:39:16.340989|INFO    |CIDRManager   |   |updated query_ip_whitelist ips: 127.0.0.1/32, ::1/128, 
2016-08-20 02:39:16.341142|INFO    |Query         |   |listening on 10.50.1.30:10011
2016-08-20 02:39:27.841638|INFO    |Query         |   |query from 44 10.50.1.30:22420 issued: login with account "serveradmin"(serveradmin)

### Backtrace using gdb

spawn su -s /bin/bash -c cd /home/teamspeak && export LD_LIBRARY_PATH=".:" && gdb ts3server && cd - > /dev/null - teamspeak
GNU gdb (Ubuntu 7.7.1-0ubuntu5~14.04.2) 7.7.1
Copyright (C) 2014 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
<http://www.gnu.org/software/gdb/documentation/>.
For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from ts3server...(no debugging symbols found)...done.
(gdb) run -x start inifile=ts3server.ini
Starting program: /home/teamspeak/ts3server -x start inifile=ts3server.ini
[tcsetpgrp failed in terminal_inferior: Unpassender IOCTL (I/O-Control) für das Gerät]
[tcsetpgrp failed in terminal_inferior: Unpassender IOCTL (I/O-Control) für das Gerät]
[tcsetpgrp failed in terminal_inferior: Unpassender IOCTL (I/O-Control) für das Gerät]
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
[tcsetpgrp failed in terminal_inferior: Unpassender IOCTL (I/O-Control) für das Gerät]
2016-08-20 18:16:34.604191|INFO    |ServerLibPriv |   |TeamSpeak 3 Server 3.0.13.3 (2016-08-18 16:46:43)
2016-08-20 18:16:34.604475|INFO    |ServerLibPriv |   |SystemInformation: Linux 4.4.12-040412-generic #201606011712 SMP Wed Jun 1 21:14:23 UTC 2016 x86_64 Binary: 64bit
2016-08-20 18:16:34.604701|INFO    |ServerLibPriv |   |Using hardware aes
[New Thread 0x7ffff7fe4700 (LWP 64098)]
[tcsetpgrp failed in terminal_inferior: Unpassender IOCTL (I/O-Control) für das Gerät]
[tcsetpgrp failed in terminal_inferior: Unpassender IOCTL (I/O-Control) für das Gerät]
2016-08-20 18:16:34.628790|INFO    |DatabaseQuery |   |dbPlugin name:    SQLite3 plugin, Version 3, (c)TeamSpeak Systems GmbH
2016-08-20 18:16:34.629005|INFO    |DatabaseQuery |   |dbPlugin version: 3.11.1
2016-08-20 18:16:34.629361|INFO    |DatabaseQuery |   |checking database integrity (may take a while)
[New Thread 0x7ffff688e700 (LWP 64099)]
[New Thread 0x7ffff608d700 (LWP 64100)]
[New Thread 0x7ffff588c700 (LWP 64101)]
[New Thread 0x7ffff508b700 (LWP 64102)]
[New Thread 0x7ffff488a700 (LWP 64103)]
2016-08-20 18:16:34.646769|WARNING |Accounting    |   |Unable to find valid license key, falling back to limited functionality
2016-08-20 18:16:35.147132|ERROR   |Accounting    |   |local accounting reports an already running instance, instance will shutdown
2016-08-20 18:16:35.147442|ERROR   |ServerLibPriv |   |Server() error while starting servermanager, error: instance limit reached
[Thread 0x7ffff608d700 (LWP 64100) exited]
[Thread 0x7ffff588c700 (LWP 64101) exited]
[Thread 0x7ffff688e700 (LWP 64099) exited]
[Thread 0x7ffff508b700 (LWP 64102) exited]
[Thread 0x7ffff488a700 (LWP 64103) exited]
[tcsetpgrp failed in terminal_inferior: Unpassender IOCTL (I/O-Control) für das Gerät]
[tcsetpgrp failed in terminal_inferior: Unpassender IOCTL (I/O-Control) für das Gerät]
[Thread 0x7ffff7fe4700 (LWP 64098) exited]
[Inferior 1 (process 64094) exited normally]
(gdb)
(gdb)

### Virtual Server Log file(s)

**Virtual Server ID: 1**
﻿2016-08-20 02:39:16.340764|INFO    |VirtualServer |1  |listening on 10.50.1.30:9987
2016-08-20 02:39:50.380274|INFO    |VirtualServerBase|1  |stopped

### Permissions in /home/teamspeak

/home/teamspeak
insgesamt 12M
drwxr-xr-x 9 teamspeak teamspeak 4,0K Aug 20 04:39 .
drwxr-xr-x 6 root           root 4,0K Aug 18 01:10 ..
-rw-r--r-- 1 root           root 5,2K Aug 20 04:39 20160820-0439-ts3us-debug-report.md
-rw------- 1 teamspeak teamspeak 5,9K Aug 20 04:36 .bash_history
-rw-r--r-- 1 teamspeak teamspeak  220 Jun 19 00:58 .bash_logout
-rw-rw-r-- 1 teamspeak teamspeak   86 Jun 19 00:58 .bash_profile
-rw-r--r-- 1 teamspeak teamspeak 3,6K Jun 19 00:58 .bashrc
-rw-rw-r-- 1 teamspeak teamspeak  49K Aug 18 01:15 CHANGELOG
drwxrwxr-x 3 teamspeak teamspeak 4,0K Jun 19 01:00 doc
drwx------ 4 teamspeak teamspeak 4,0K Jun 19 01:05 files
-rwxrwxr-x 1 teamspeak teamspeak 978K Aug 18 01:15 libts3db_mariadb.so
-rwxrwxr-x 1 teamspeak teamspeak 2,1M Aug 18 01:15 libts3db_sqlite3.so
-rw-rw-r-- 1 teamspeak teamspeak  36K Aug 18 01:15 LICENSE
drwx------ 2 teamspeak teamspeak 4,0K Aug 20 04:39 logs
---------- 1 teamspeak teamspeak    9 Jun 23 21:24 .password-file
-rw-r--r-- 1 teamspeak teamspeak  675 Jun 19 00:58 .profile
-rw-rw-r-- 1 teamspeak teamspeak    0 Aug 18 01:15 query_ip_blacklist.txt
-rw-rw-r-- 1 teamspeak teamspeak   14 Aug 18 01:15 query_ip_whitelist.txt
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 redist
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 serverquerydocs
drwxrwxr-x 5 teamspeak teamspeak  12K Jun 19 01:00 sql
-rwxr-xr-x 1 teamspeak teamspeak 8,3M Aug 18 01:15 ts3server
-rw-rw-r-- 1 teamspeak teamspeak  465 Jun 20 22:33 ts3server.ini
-rwxrwxr-x 1 teamspeak teamspeak  129 Aug 18 01:15 ts3server_minimal_runscript.sh
-rw-rw-r-- 1 teamspeak teamspeak    6 Aug 20 04:39 ts3server.pid
-rw-r--r-- 1 teamspeak teamspeak 200K Aug 18 01:15 ts3server.sqlitedb
-rw-r--r-- 1 teamspeak teamspeak  32K Aug 20 04:39 ts3server.sqlitedb-shm
-rw-r--r-- 1 teamspeak teamspeak    0 Aug 20 04:39 ts3server.sqlitedb-wal
-rwxr-xr-x 1 teamspeak teamspeak 2,7K Aug 18 01:15 ts3server_startscript.sh
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 tsdns
-rw------- 1 teamspeak teamspeak 4,1K Jun 20 22:34 .viminfo

/home/teamspeak/tsdns
insgesamt 944K
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 .
drwxr-xr-x 9 teamspeak teamspeak 4,0K Aug 20 04:39 ..
-rw-rw-r-- 1 teamspeak teamspeak 3,4K Aug 18 01:15 README
-rwxrwxr-x 1 teamspeak teamspeak 921K Aug 18 01:15 tsdnsserver
-rw-rw-r-- 1 teamspeak teamspeak 2,8K Aug 18 01:15 tsdns_settings.ini.sample
-rw-rw-r-- 1 teamspeak teamspeak 2,8K Aug 18 01:15 USAGE

/home/teamspeak/sql
insgesamt 620K
drwxrwxr-x 5 teamspeak teamspeak  12K Jun 19 01:00 .
drwxr-xr-x 9 teamspeak teamspeak 4,0K Aug 20 04:39 ..
-rw-rw-r-- 1 teamspeak teamspeak   65 Aug 18 01:15 ban_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak  360 Aug 18 01:15 ban_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak   48 Aug 18 01:15 ban_list.sql
-rw-rw-r-- 1 teamspeak teamspeak   52 Aug 18 01:15 binding_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak   63 Aug 18 01:15 bindings_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak   44 Aug 18 01:15 bindings_list.sql
-rw-rw-r-- 1 teamspeak teamspeak  497 Aug 18 01:15 channel_delete_bulk.sql
-rw-rw-r-- 1 teamspeak teamspeak  415 Aug 18 01:15 channel_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak  309 Aug 18 01:15 channel_insert_bulk_fixup.sql
-rw-rw-r-- 1 teamspeak teamspeak   78 Aug 18 01:15 channel_insert_bulk_mapping.sql
-rw-rw-r-- 1 teamspeak teamspeak  178 Aug 18 01:15 channel_insert_bulk.sql
-rw-rw-r-- 1 teamspeak teamspeak   97 Aug 18 01:15 channel_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak  191 Aug 18 01:15 channel_properties_bulk_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak  254 Aug 18 01:15 channel_server_list_properties_bulk.sql
-rw-rw-r-- 1 teamspeak teamspeak   79 Aug 18 01:15 channel_server_list.sql
-rw-rw-r-- 1 teamspeak teamspeak   88 Aug 18 01:15 channel_update_parentid.sql
-rw-rw-r-- 1 teamspeak teamspeak   96 Aug 18 01:15 client_clear_traffic_stats.sql
-rw-rw-r-- 1 teamspeak teamspeak   67 Aug 18 01:15 client_count_by_serverid.sql
-rw-rw-r-- 1 teamspeak teamspeak  346 Aug 18 01:15 client_delete_prune.sql
-rw-rw-r-- 1 teamspeak teamspeak  597 Aug 18 01:15 client_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak   76 Aug 18 01:15 client_get_by_id.sql
-rw-rw-r-- 1 teamspeak teamspeak   91 Aug 18 01:15 client_get_by_name_or_uid.sql
-rw-rw-r-- 1 teamspeak teamspeak  343 Aug 18 01:15 client_get_by_serverid_bulk.sql
-rw-rw-r-- 1 teamspeak teamspeak   76 Aug 18 01:15 client_get_by_serverid_limit.sql
-rw-rw-r-- 1 teamspeak teamspeak   51 Aug 18 01:15 client_get_by_serverid.sql
-rw-rw-r-- 1 teamspeak teamspeak   92 Aug 18 01:15 client_get_by_uid.sql
-rw-rw-r-- 1 teamspeak teamspeak   50 Aug 18 01:15 client_get.sql
-rw-rw-r-- 1 teamspeak teamspeak  151 Aug 18 01:15 clientid_get_by_name_pw_serverid.sql
-rw-rw-r-- 1 teamspeak teamspeak  121 Aug 18 01:15 clientid_get_by_name_pw.sql
-rw-rw-r-- 1 teamspeak teamspeak   75 Aug 18 01:15 client_insert_bulk_mapping.sql
-rw-rw-r-- 1 teamspeak teamspeak  318 Aug 18 01:15 client_insert_bulk.sql
-rw-rw-r-- 1 teamspeak teamspeak  189 Aug 18 01:15 client_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak  188 Aug 18 01:15 client_properties_bulk_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak  158 Aug 18 01:15 client_update_login_info.sql
-rw-rw-r-- 1 teamspeak teamspeak  107 Aug 18 01:15 client_update_name.sql
-rw-rw-r-- 1 teamspeak teamspeak  173 Aug 18 01:15 client_update_stats.sql
-rw-rw-r-- 1 teamspeak teamspeak  276 Aug 18 01:15 client_update_traffic_stats.sql
-rw-rw-r-- 1 teamspeak teamspeak  104 Aug 18 01:15 complain_delete_all.sql
-rw-rw-r-- 1 teamspeak teamspeak   91 Aug 18 01:15 complain_delete_prune.sql
-rw-rw-r-- 1 teamspeak teamspeak  160 Aug 18 01:15 complain_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak   54 Aug 18 01:15 complain_get_by_serverid.sql
-rw-rw-r-- 1 teamspeak teamspeak  267 Aug 18 01:15 complain_insert.sql
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 create_mariadb
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 create_sqlite
-rw-rw-r-- 1 teamspeak teamspeak   81 Aug 18 01:15 custom_delete_by_clientid.sql
-rw-rw-r-- 1 teamspeak teamspeak  100 Aug 18 01:15 custom_get_by_ident.sql
-rw-rw-r-- 1 teamspeak teamspeak   82 Aug 18 01:15 custom_get_by_id.sql
-rw-rw-r-- 1 teamspeak teamspeak  131 Aug 18 01:15 custom_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak  70K Aug 18 01:15 defaults.sql
-rw-rw-r-- 1 teamspeak teamspeak  158 Aug 18 01:15 group_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak   69 Aug 18 01:15 group_id_get_by_name.sql
-rw-rw-r-- 1 teamspeak teamspeak   74 Aug 18 01:15 group_insert_bulk_snapshot_get_mapping.sql
-rw-rw-r-- 1 teamspeak teamspeak  169 Aug 18 01:15 group_insert_bulk_snapshot.sql
-rw-rw-r-- 1 teamspeak teamspeak   81 Aug 18 01:15 group_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak   75 Aug 18 01:15 group_member_delete_by_groupid.sql
-rw-rw-r-- 1 teamspeak teamspeak  107 Aug 18 01:15 group_member_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak  120 Aug 18 01:15 group_member_detail_get_by_groupid.sql
-rw-rw-r-- 1 teamspeak teamspeak  110 Aug 18 01:15 group_member_get.sql
-rw-rw-r-- 1 teamspeak teamspeak  152 Aug 18 01:15 group_member_insert_bulk.sql
-rw-rw-r-- 1 teamspeak teamspeak   99 Aug 18 01:15 group_member_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak   49 Aug 18 01:15 group_members_get_by_groupid.sql
-rw-rw-r-- 1 teamspeak teamspeak   72 Aug 18 01:15 group_members_get_by_id.sql
-rw-rw-r-- 1 teamspeak teamspeak   51 Aug 18 01:15 group_members_get_by_serverid.sql
-rw-rw-r-- 1 teamspeak teamspeak   57 Aug 18 01:15 group_rename.sql
-rw-rw-r-- 1 teamspeak teamspeak   51 Aug 18 01:15 groups_get_by_serverid.sql
-rw-rw-r-- 1 teamspeak teamspeak   69 Aug 18 01:15 groups_get_by_serverid_type.sql
-rw-rw-r-- 1 teamspeak teamspeak   21 Aug 18 01:15 groups_get.sql
-rw-rw-r-- 1 teamspeak teamspeak   39 Aug 18 01:15 info_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak   68 Aug 18 01:15 info_get_by_ident.sql
-rw-rw-r-- 1 teamspeak teamspeak   58 Aug 18 01:15 info_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak  131 Aug 18 01:15 message_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak  133 Aug 18 01:15 message_get_by_clientid.sql
-rw-rw-r-- 1 teamspeak teamspeak  117 Aug 18 01:15 message_get_unread_by_clientid.sql
-rw-rw-r-- 1 teamspeak teamspeak  305 Aug 18 01:15 message_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak  103 Aug 18 01:15 message_list_by_clientid.sql
-rw-rw-r-- 1 teamspeak teamspeak  161 Aug 18 01:15 message_update_flag.sql
-rw-rw-r-- 1 teamspeak teamspeak 2,3K Aug 18 01:15 perm_copy_default_permissions.sql
-rw-rw-r-- 1 teamspeak teamspeak   65 Aug 18 01:15 perm_delete_by_groupid.sql
-rw-rw-r-- 1 teamspeak teamspeak  105 Aug 18 01:15 perm_delete_by_permid.sql
-rw-rw-r-- 1 teamspeak teamspeak  896 Aug 18 01:15 perm_delete_by_serverid.sql
-rw-rw-r-- 1 teamspeak teamspeak   39 Aug 18 01:15 perm_get_by_id.sql
-rw-rw-r-- 1 teamspeak teamspeak   52 Aug 18 01:15 perm_get_by_serverid.sql
-rw-rw-r-- 1 teamspeak teamspeak  151 Aug 18 01:15 perm_group_copy.sql
-rw-rw-r-- 1 teamspeak teamspeak  389 Aug 18 01:15 perm_group_get_mapping.sql
-rw-rw-r-- 1 teamspeak teamspeak  440 Aug 18 01:15 perm_group_perm_copy.sql
-rw-rw-r-- 1 teamspeak teamspeak  278 Aug 18 01:15 perm_insert_bulk.sql
-rw-rw-r-- 1 teamspeak teamspeak  176 Aug 18 01:15 perm_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak  927 Aug 18 01:15 permission_load_channel_group_total.sql
-rw-rw-r-- 1 teamspeak teamspeak  399 Aug 18 01:15 permission_load_other.sql
-rw-rw-r-- 1 teamspeak teamspeak 1,9K Aug 18 01:15 permission_load_server_and_channel_group_total.sql
-rw-rw-r-- 1 teamspeak teamspeak  925 Aug 18 01:15 permission_load_server_group_total.sql
-rw-rw-r-- 1 teamspeak teamspeak  433 Aug 18 01:15 perm_rename.sql
-rw-rw-r-- 1 teamspeak teamspeak   93 Aug 18 01:15 perm_update_get_groups.sql
-rw-rw-r-- 1 teamspeak teamspeak   41 Aug 18 01:15 properties_delete_by_id.sql
-rw-rw-r-- 1 teamspeak teamspeak   55 Aug 18 01:15 properties_delete_by_string_id.sql
-rw-rw-r-- 1 teamspeak teamspeak  152 Aug 18 01:15 properties_insert_by_id.sql
-rw-rw-r-- 1 teamspeak teamspeak  183 Aug 18 01:15 properties_insert_by_string_id.sql
-rw-rw-r-- 1 teamspeak teamspeak   42 Aug 18 01:15 properties_list_by_id.sql
-rw-rw-r-- 1 teamspeak teamspeak   56 Aug 18 01:15 properties_list_by_string_id.sql
-rw-rw-r-- 1 teamspeak teamspeak  104 Aug 18 01:15 server_clear_traffic_stats.sql
-rw-rw-r-- 1 teamspeak teamspeak  188 Aug 18 01:15 server_delete_get_qa_clients.sql
-rw-rw-r-- 1 teamspeak teamspeak 1,3K Aug 18 01:15 server_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak   52 Aug 18 01:15 server_get_byid.sql
-rw-rw-r-- 1 teamspeak teamspeak   56 Aug 18 01:15 server_get_byport.sql
-rw-rw-r-- 1 teamspeak teamspeak  140 Aug 18 01:15 server_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak   67 Aug 18 01:15 server_list_by_machine_id.sql
-rw-rw-r-- 1 teamspeak teamspeak   22 Aug 18 01:15 server_list.sql
-rw-rw-r-- 1 teamspeak teamspeak 1,1K Aug 18 01:15 server_snapshot_delete_failed.sql
-rw-rw-r-- 1 teamspeak teamspeak 1,1K Aug 18 01:15 server_snapshot_delete.sql
-rw-rw-r-- 1 teamspeak teamspeak   85 Aug 18 01:15 server_update_autostart.sql
-rw-rw-r-- 1 teamspeak teamspeak   87 Aug 18 01:15 server_update_machine_id.sql
-rw-rw-r-- 1 teamspeak teamspeak   75 Aug 18 01:15 server_update_port.sql
-rw-rw-r-- 1 teamspeak teamspeak  276 Aug 18 01:15 server_update_traffic_stats.sql
-rw-rw-r-- 1 teamspeak teamspeak   72 Aug 18 01:15 token_delete_by_key.sql
-rw-rw-r-- 1 teamspeak teamspeak   74 Aug 18 01:15 token_get_by_key.sql
-rw-rw-r-- 1 teamspeak teamspeak  340 Aug 18 01:15 token_insert.sql
-rw-rw-r-- 1 teamspeak teamspeak   48 Aug 18 01:15 token_list.sql
-rw-rw-r-- 1 teamspeak teamspeak  541 Aug 18 01:15 update_12.sql
-rw-rw-r-- 1 teamspeak teamspeak 3,4K Aug 18 01:15 update_13.sql
-rw-rw-r-- 1 teamspeak teamspeak  402 Aug 18 01:15 update_14.sql
-rw-rw-r-- 1 teamspeak teamspeak   73 Aug 18 01:15 update_15.sql
-rw-rw-r-- 1 teamspeak teamspeak  197 Aug 18 01:15 update_16.sql
-rw-rw-r-- 1 teamspeak teamspeak  158 Aug 18 01:15 update_17.sql
-rw-rw-r-- 1 teamspeak teamspeak   57 Aug 18 01:15 update_18.sql
-rw-rw-r-- 1 teamspeak teamspeak   26 Aug 18 01:15 update_19.sql
-rw-rw-r-- 1 teamspeak teamspeak   61 Aug 18 01:15 update_20.sql
-rw-rw-r-- 1 teamspeak teamspeak   51 Aug 18 01:15 update_21.sql
-rw-rw-r-- 1 teamspeak teamspeak   64 Aug 18 01:15 update_22.sql
-rw-rw-r-- 1 teamspeak teamspeak   92 Aug 18 01:15 update_23.sql
-rw-rw-r-- 1 teamspeak teamspeak  209 Aug 18 01:15 update_24.sql
-rw-rw-r-- 1 teamspeak teamspeak  312 Aug 18 01:15 update_25.sql
-rw-rw-r-- 1 teamspeak teamspeak   93 Aug 18 01:15 update_database_version.sql
-rw-rw-r-- 1 teamspeak teamspeak  979 Aug 18 01:15 update_permissions_12.sql
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 updates_and_fixes

/home/teamspeak/sql/create_mariadb
insgesamt 32K
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 .
drwxrwxr-x 5 teamspeak teamspeak  12K Jun 19 01:00 ..
-rw-rw-r-- 1 teamspeak teamspeak 9,3K Aug 18 01:15 create_tables.sql
-rw-rw-r-- 1 teamspeak teamspeak  840 Aug 18 01:15 drop_tables.sql

/home/teamspeak/sql/updates_and_fixes
insgesamt 28K
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 .
drwxrwxr-x 5 teamspeak teamspeak  12K Jun 19 01:00 ..
-rw-rw-r-- 1 teamspeak teamspeak 3,7K Aug 18 01:15 convert_mysql_to_mariadb.sql
-rw-rw-r-- 1 teamspeak teamspeak 5,1K Aug 18 01:15 mariadb_fix_latin_utf8.sql

/home/teamspeak/sql/create_sqlite
insgesamt 32K
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 .
drwxrwxr-x 5 teamspeak teamspeak  12K Jun 19 01:00 ..
-rw-rw-r-- 1 teamspeak teamspeak 9,0K Aug 18 01:15 create_tables.sql
-rw-rw-r-- 1 teamspeak teamspeak 1,1K Aug 18 01:15 drop_tables.sql

/home/teamspeak/redist
insgesamt 308K
drwxrwxr-x 2 teamspeak teamspeak 4,0K Jun 19 01:00 .
drwxr-xr-x 9 teamspeak teamspeak 4,0K Aug 20 04:39 ..
-rwxrwxr-x 1 teamspeak teamspeak 300K Aug 18 01:15 libmariadb.so.2
