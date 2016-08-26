# BEST PRACTICES ANALYZER (BPA)

The Best Practices Analyzer - short BPA - is integrated in TS3UpdateScript since version 4.0.0.

The BPA checks each of installed TeamSpeak server instances against the latest list of following best practices:
- Offical TeamSpeak Systems, Inc. suggestions and recommendations
- Suggestions and recommendations of experienced Linux administrators
- Suggestions and recommendations of experienced scripting and shell developers
- Suggestions and recommendations of experienced TeamSpeak lover

## Table of content

- [Hint / Note](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#hint--note)
- [Types](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#types)
- [Why should you have this feature?](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#why-should-you-have-this-feature)
- [How-to fix best practice...](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#how-to-fix-best-practice)
	- [Your server is running under owner root permissions. This is not recommend.](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#your-server-is-running-under-owner-root-permissions-this-is-not-recommend)
	- [Your server is running under group root permissions. This is not recommend.](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#your-server-is-running-under-group-root-permissions-this-is-not-recommend)
	- [WARNING: Use an invalid shell like /bin/false or /usr/sbin/nologin to host your TeamSpeak 3 server a bit safer.](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#warning-use-an-invalid-shell-like-binfalse-or-usrsbinnologin-to-host-your-teamspeak-3-server-a-bit-safer)
	- [Could not identify the owner of the TeamSpeak 3 server files.](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#could-not-identify-the-owner-of-the-teamspeak-3-server-files)
	- [Could not identify the user ID of the owner.](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#could-not-identify-the-user-id-of-the-owner)
	- [Could not identify the group of the TeamSpeak 3 server files.](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#could-not-identify-the-group-of-the-teamspeak-3-server-files)
 	- [Could not identify the group ID.](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#could-not-identify-the-group-id)
	- [WARNING: You rather should use an external storage for your files/ directory regarding big file uploads.](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md#warning-you-rather-should-use-an-external-storage-for-your-files-directory-regarding-big-file-uploads)

## Hint / Note

The BPA is only available with the 'Enterprise' license. Read [here](https://github.com/TS3Tools/TS3UpdateScript#script-licenses) for further license information.

## Types

The script includes following types of best practices:

Type | Needs to be fixed | Examples
:------------- | :------------- | :-------------
Warning | No | You should disable the login for the user
Suggestion / Recommendation | Yes | Do not run the TeamSpeak 3 server as root

## Why should you have this feature?

You should have this feature, because it makes your TeamSpeak server more reliable and secure.

The best practices includes TeamSpeak server specific checks as well as Linux specific ones such as server configuration, filesystem and permissions.

## How-to fix best practice...

## Your server is running under owner root permissions. This is not recommend.

Type: Suggestion / Recommendation

This simply means, that your server is running as root user and this is not recommended and a high gap in security.

1. Login as user 'root' on your Root-Server/virtual Server/VPS
2. Add a new user with a disabled login shell and the TeamSpeak instance directory as home folder

  root@tux:~# adduser --home /path/to/teamspeak/instance/ --shell /bin/false --disabled-login teamspeak

3. Stop your TeamSpeak server

  root@tux:~# cd /path/to/teamspeak/instance/

  root@tux:~# ./ts3server_startscript.sh stop

4. Change the ownership of all TeamSpeak server files and directories to the new user

  root@tux:~# chown teamspeak -R /path/to/teamspeak/instance/

5. Login as new user

  root@tux:~# su -s /bin/bash - teamspeak

6. Start your TeamSpeak server as the new user instead of root

  teamspeak@tux:~$ ./ts3server_startscript.sh start

### Your server is running under group root permissions. This is not recommend.

Type: Suggestion / Recommendation

This simply means, that your server is running as root user and this is not recommended and a high gap in security.

1. Login as user 'root' on your Root-Server/virtual Server/VPS
2. Add a new group for the owner of the TeamSpeak server files or use the group "users"

  root@tux:~# addgroup teamspeak

  root@tux:~# usermod -g teamspeak teamspeak

3. Stop your TeamSpeak server as owner of the TeamSpeak server files

  teamspeak@tux:~$ cd /path/to/teamspeak/instance/

  teamspeak@tux:~$ ./ts3server_startscript.sh stop

4. Change the ownership of all TeamSpeak server files and directories to the new group or 'users'

  root@tux:~# chgrp teamspeak -R /path/to/teamspeak/instance/

5. Login as user

  root@tux:~# su -s /bin/bash - teamspeak

6. Start your TeamSpeak server as the new user instead of root

  teamspeak@tux:~$ ./ts3server_startscript.sh start

### WARNING: Use an invalid shell like /bin/false or /usr/sbin/nologin to host your TeamSpeak 3 server a bit safer.

Type: Warning

This means, that you rather should disable the login for the owner of the TeamSpeak server files.

1. Login as user 'root' on your Root-Server/virtual Server/VPS
2. Edit the file /etc/passwd

  root@tux:~# vim /etc/passwd

3. Find the user (owner) of the TeamSpeak server files

  In vi / vim just enter a slash followed by your username and hit enter

4. Change the shell of this user to /bin/false or /usr/sbin/nologin

  teamspeak:x:1002:1002:TeamSpeak,,,:/path/to/teamspeak/instance/:/bin/bash

  teamspeak:x:1002:1002:TeamSpeak,,,:/path/to/teamspeak/instance/:/bin/false

### Could not identify the owner of the TeamSpeak 3 server files.
### Could not identify the user ID of the owner.

Type: Suggestion / Recommendation

This means, that the script could not detect the owner or it's ID of the TeamSpeak server files. This may causes a deleted user.

1. Login as user 'root' on your Root-Server/virtual Server/VPS
2. View the permissions and ownerships of the TeamSpeak server files

  root@tux:~# ls -lh /path/to/teamspeak/instance/

  -rw-r--r-- 1 teamspeak teamspeak  45K Okt 24 17:42 CHANGELOG

  drwxr-xr-x 2 teamspeak teamspeak 4,0K Okt 20  2014 doc

  drwx------ 8 teamspeak teamspeak 4,0K Dez 17  2014 files

     .

     .

     .

  -rwxr-xr-x 1 teamspeak teamspeak 3,9K Okt 24 17:42 ts3server_startscript.sh

  drwxr-xr-x 2 teamspeak teamspeak 4,0K Jul 16  2014 tsdns

                   ^         ^

                 User      Group

2. View the file /etc/passwd

  root@tux:~# less /etc/passwd

3. Verify, if the user exists

4. Create the missing user with a disabled login shell and the TeamSpeak instance directory as home folder

  root@tux:~# adduser --home /path/to/teamspeak/instance/ --shell /bin/false --disabled-login teamspeak

5. Stop your TeamSpeak server (probably as root, because the owner of your TeamSpeak server files does not exist anymore)

  root@tux:~# cd /path/to/teamspeak/instance/

  root@tux:~# ./ts3server_startscript.sh stop

6. Change the ownership of all TeamSpeak server files and directories to the new user

  root@tux:~# chown teamspeak -R /path/to/teamspeak/instance/

7. Login as new user

  root@tux:~# su -s /bin/bash - teamspeak

8. Start your TeamSpeak server as the new user instead of root

  teamspeak@tux:~$ ./ts3server_startscript.sh start

### Could not identify the group of the TeamSpeak 3 server files.
### Could not identify the group ID.

Type: Suggestion / Recommendation

This means, that the script could not detect the group or it's ID of the TeamSpeak server files. This may causes a deleted group.

1. Login as user 'root' on your Root-Server/virtual Server/VPS
2. View the permissions and ownerships of the TeamSpeak server files

  root@tux:~# ls -lh /path/to/teamspeak/instance/

  -rw-r--r-- 1 teamspeak teamspeak  45K Okt 24 17:42 CHANGELOG

  drwxr-xr-x 2 teamspeak teamspeak 4,0K Okt 20  2014 doc

  drwx------ 8 teamspeak teamspeak 4,0K Dez 17  2014 files

     .

     .

     .

  -rwxr-xr-x 1 teamspeak teamspeak 3,9K Okt 24 17:42 ts3server_startscript.sh

  drwxr-xr-x 2 teamspeak teamspeak 4,0K Jul 16  2014 tsdns

                   ^         ^

                 User      Group

2. View the file /etc/group

  root@tux:~# less /etc/group

3. Verify, if the group exists

4. Create the missing group for the owner of the TeamSpeak server files or use the group "users"

  root@tux:~# addgroup teamspeak

  root@tux:~# usermod -g teamspeak teamspeak

3. Stop your TeamSpeak server as owner of the TeamSpeak server files

  teamspeak@tux:~$ cd /path/to/teamspeak/instance/

  teamspeak@tux:~$ ./ts3server_startscript.sh stop

4. Change the ownership of all TeamSpeak server files and directories to the new group or 'users'

  root@tux:~# chgrp teamspeak -R /path/to/teamspeak/instance/

7. Login as the user, which owns the TeamSpeak server files

  root@tux:~# su -s /bin/bash - teamspeak

8. Start your TeamSpeak server as the new user instead of root

  teamspeak@tux:~$ ./ts3server_startscript.sh start

### WARNING: You rather should use an external storage for your files/ directory regarding big file uploads.

Type: Warning

This means, that you rather should save your user uploaded files, which are uploaded by file transfers into the files/ directory on an external storage to handle possible storage migration and resizing easier.

Solutions:

1. Setup an external storage like NAS, SAN, iSCSI

2. Map the external storage via SMB/CIFS/NFS/iSCSI or whatever on the /path/to/teamspeak/instance/files/ directory

3. Make sure, that the file transfers are able to save files on this new storage (check the permissions)

Please note, that you should migrate existing data from your current/old storage to the new one. rsync is an useful software to migrate/copy your data.
