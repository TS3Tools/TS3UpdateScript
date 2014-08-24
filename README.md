README
============

Developers
============
Sebastian Kraetzig <info@ts3-tools.info>

What is the TS3 UpdateScript?
============
It's a bash script which checks, if a newer version for your TeamSpeak 3 server is available. If yes, you can choose, if the script should update the server or not. You also have some parameters like "delete old logs files" and so on. Well... If you don't want to update your TeamSpeak 3 server manually, you can use this script. This script is doing ALL steps for a correct update process of your TeamSpeak 3 server.

Stay tuned!
============
Official Project Homepage: www.ts3-tools.info

facebook Fanpage: https://www.facebook.com/TS3Tools

GitHub: https://github.com/TS3Tools/TS3UpdateScript/

Requirements
============
- Linux (tested on Debian based systems such as Debian and Ubuntu, but should work on the most distributions)
- root access on your Linux system
- Installed TeamSpeak server
- Needed installed softwares by the script
  - bash
  - mktemp
  - rsync
  - wget
  - grep
  - sed
  - unzip
  - mail (for receiving cronjob mails)
  - telnet (if you want to inform online clients about updates)

Supports
============
- SQLite and MySQL database setups
- TSDNS
- Linux and FreeBSD

Features
============
- Auto detection of
  - TeamSpeak server instances installation directories
  - Installed and latest TeamSpeak server version as well as architecture
    - You may will test the latest version for a while, so you can set 'your' latest version (View parameter '--latest-version' with './TS3UpdateScript.sh --help')
  - File permissions of current installed TeamSpeak server
  - Used database type
  - TSDNS usage
  - ServerQuery Port
  - Latest version of the TS3UpdateScript self
- Backup as rollback, if the newer TeamSpeak server version is not compatible or not working
- Deletes old logs, if you want to
- Informs online clients via poke message, if you want to
- Keeps rollback Backup, if you want to (parameter '--keep-backups')
- Cronjob (CRON) for (weekly) fully automated update process (it's manually adjustable)

Work flow of the script
============
First it will check, if a newer version for the script self is available and afterwards it will check your installed version of each instance against the latest available version from teamspeak.de. It also will detect, if you are using TSDNS, SQLite or MySQL database and so on. If a newer version is available, the script will do following steps:

1. Inform online clients on all virtual servers (if you want to; parameter '--inform-online-clients' needed)
2. Stopp running TSDNS (if used)
3. Stopp running server instance gracefully
4. Delete old logs (if you want to; parameter '--delete-old-logs' needed)
5. Create backup of currently running TeamSpeak 3 server in '/tmp/ts3server_backup/'
6. Download latest and named TeamSpeak 3 server files from 4players.de
7. Unzip downloaded TeamSpeak 3 server files
8. Import licensekey (if available), database and Query IP Black- and Whitelist from backup
9. Import TSDNS settings file (if used)
10. Delete ts3server.pid, if exists for correct start
11. Delete downloaded TeamSpeak 3 server files
12. Set ownership and group of files like before update
13. Start TSDNS (if was used)
14. Add commandline parameter to new ts3server_startscript.sh if INI-file is used
15. Start updated server
16. Script waits 15 seconds and checks, if the server is running
17. If the server is not running, the rollback will be executed
18. Clean up system from created and downloaded files for the update process

Those steps will the script execute for each installed instance, which will be checked.

The files/ directory will not be touched by the script - also not backuped!

Directory Structure - Where can I find which file?
============
Path  | Description
:------------- | :-------------
.  | README.md, TS3UpdateScript.sh and the copy of the license
./docs/  | Install and upgrade guide as well as changelog
.configs/  | Configuration files

Donate
============
TS3UpdateScript is free software and is made available free of charge. Your donation, which is purely optional, supports me at improving the software as well as reducing my costs of this project. If you like the software, please consider a donation. Thank you very much!

https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7ZRXLSC2UBVWE
