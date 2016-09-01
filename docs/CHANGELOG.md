# C H A N G E L O G

This file shows all the adjustments which were done in this TS3UpdateScript. For example there were some corrections on the code, some new features and bugfixes. This file is always referred to the attached TS3UpdateScript.

## Meaning of releases

Major Release | Minor Release | Hotfix Release
:------------- | :------------- | :-------------
4 | 1 | 0

Release | Meaning
:------------- | :-------------
Major | New features, Re-development of code (structure) and fundamental changes to the TS3UpdateScript
Minor | Small improvements, new best practice checks and something like this
Hotfix | Important fix for one more issues, which causes a not (correct) working TS3UpdateScript

## Legend / History

	+ Added something
	- Removed something
	* Changed/Fixed something
	! Hint/Warning

## Releases

### Version 5.2.0

	* Improved update process of TeamSpeak 3 servers for more performance
	* Removed sqlite3 from required packages and added it to optional packages (GitHub issue [#48](https://github.com/TS3Tools/TS3UpdateScript/issues/48))
	! Please notice, that you will need the sqlite3 package, if you have changed your ServerQuery IP binding in the SQLite database
	* Removed version of lsb_release from debug report by changing the parameters
	+ Added support for [TS3Monitor](https://github.com/TS3Tools/TS3Monitor/)
	* Renamed parameter '--send-license-information' to '--request-license'
	* Database upgrade from MySQL to MariaDB was only imported, if the latest supported MySQL build was installed
	+ Added deprecated message for parameter '--locale' (Set the variable 'DEFAULT_LANGUAGE' in your config/config.all instead.)
	! This parameter will be removed with one of the next versions
	* (Only) New Enterprise license purchases will have 2 instead of 5-years support
	! Customers, who already bought such a license, will still have 5-years support
	+ Added extended support subscription plans to README.md
	* Improved checking of required packages: The script will now display all missing packages instead of a single one at every execution
	* Fixed overlapping output by updating the script
	+ BPA: Added check for system locale (GitHub issue [#44](https://github.com/TS3Tools/TS3UpdateScript/issues/44))
	! New variable was added to language file: TXT_COLLECTING_INFORMATION_SYSTEM_LOCALE
	* Removed absolute URL from all docs
	+ Added feature to disable BPA messages, which were displayed once (GitHub issue [#47](https://github.com/TS3Tools/TS3UpdateScript/issues/47))
	! The script will create and fill a new config file for disabling the BPA messages: configs/config.bpa
	* Updated all documentations (GitHub issue [#50](https://github.com/TS3Tools/TS3UpdateScript/issues/50))

### Version 5.1.0

	! This version fixes the issue with the current update problem
	* Removed debug report from debug file
	* Added permission view to listing of files
	+ Added backtrace using gdb to function createDebugReport for further debug information
	! Requires the Linux package gdb; gdb was added to the required list of packages
	+ Added example debug file (docs/EXAMPLE_DEBUG_REPORT.md)
	* Debug report: Improved logging of virtual server log files
	* Debug report: Improved listing of files
	* Debug report: Added absolute path of debug report file to TS3UpdateScript output
	+ Added descriptions of packages to README.md
	* Fixed incorrect parameter check at script part 'MENU / HELP'
	* Improved update process of TeamSpeak 3 servers
	* Improved detection of ServerQuery IP address (GitHub issue [#45](https://github.com/TS3Tools/TS3UpdateScript/issues/45) and [#46](https://github.com/TS3Tools/TS3UpdateScript/issues/46))
	* Changed text for example suggestion / recommendation in docs/BEST_PRACTICES_ANALYZER.md to prevent missunderstandings
	+ Added Best Practices document for the TS3UpdateScript in [docs/TS3US_BEST_PRACTICES.md](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/TS3US_BEST_PRACTICES.md)

### Version 5.0.1

	+ Added lsb_release command as required software package (available in package lsb-release)
	+ Added output of 'locale' to debug report
	+ Added listing of files - except in files, serverquerydocs, doc, logs - to debug report
	* Removed leading '.*' from censored ts3db INI-line in debug report
	* Improved script overall a bit by using [ShellCheck](https://github.com/koalaman/shellcheck)
	+ Installed Build 1461597405 needs an database update to 25
	! Usually, it should be updated automatic
	+ Added sqlite3 command as required software package (available in package sqlite3)
	* Improved detection of TSDNS PID and path

### Version 5.0.0

	+ FreeBSD will now load automatic the async io (aio*) module (GitHub issue [#40](https://github.com/TS3Tools/TS3UpdateScript/issues/40))
	* Improved database backup: Config parameters in ts3db INI-file will be detected case insensitive (GitHub issue [41](https://github.com/TS3Tools/TS3UpdateScript/issues/41))
	* Improved database backup: Added database port to SQL connection (GitHub issue [41](https://github.com/TS3Tools/TS3UpdateScript/issues/41))
	* Improved database backup: Leading and trailing quotation marks of all SQL config values will be removed (GitHub issue [41](https://github.com/TS3Tools/TS3UpdateScript/issues/41))
	* Improved database backup: Exit codes on failed SQL commands were not detected correct (GitHub issue [41](https://github.com/TS3Tools/TS3UpdateScript/issues/41))
	! Please note, that the quotation marks are not necessary in the ts3db INI-file
	* Improved output of instance log in debug file
	+ Added function createDebugReport() for creating a debug report, if the update failed
	! Debug report will be saved in the root directory of each TS3 server instance
	! New text variables are available: TXT_EXECUTION_MECHANISM_DEBUG_REPORT_SUCCESSFUL, TXT_EXECUTION_MECHANISM_DEBUG_REPORT_FAILED

### Version 4.6.2

	* Improved serveradmin password check again, because some operating systems returned a wrong formatted login check, which was not possible to verify

### Version 4.6.1

	* Improved serveradmin password check

### Version 4.6.0

	* Improved sending of license requests (GitHub issue [#34](https://github.com/TS3Tools/TS3UpdateScript/issues/34))
	+ The instance log file of the failed instance will be logged as further debugging information (Due of GitHub issue [#35](https://github.com/TS3Tools/TS3UpdateScript/issues/35))
	+ Added option to config.all file for a default language: DEFAULT_LANGUAGE
	! Please add this option manual to your config.all. Example: DEFAULT_LANGUAGE=de_DE
	* Added option DEFAULT_LANGUAGE to docs/INSTALL_USAGE_GUIDE.md

### Version 4.5.0

	* Migrated multiple configuraton files to one single file: configs/config.all
	+ Added "which" command to list of required packages
	* Improved formatting of ts3server_startscript.sh, when adding "inifile=ts3server.ini"
	* Changed TS3UpdateScript licensing (see [Script Licenses](https://github.com/TS3Tools/TS3UpdateScript#script-licenses))
	! Renamed license "Hoster" to "Enterprise" and "Non-Profit" to "Free" due of some misunderstandings
	! Cronjobs are now available with the Professional and Enterprise license
	* Updated all documentations regarding change of configuration file(s) and TS3UpdateScript licensing
	* Updated all language files regarding change of configuration file(s)
	+ Added feature request functionality for installing dynamic cronjobs (GitHub issue [#28](https://github.com/TS3Tools/TS3UpdateScript/issues/28))
	! You're now able to provide an optional starting hour and minute. Install example for 22.15 o'clock:  ./TS3UpdateScript --install-cronjob 22 15 --check
	* Improved function getServerQueryIP() for IPv6/multipe IP bindings support

### Version 4.4.0

	* TSDNS: Decreased downtime while creating password backups and display backup message (GitHub issue [#23](https://github.com/TS3Tools/TS3UpdateScript/issues/23))
	! New language variable 'TXT_EXECUTION_MECHANISM_GET_TEMPORARY_SERVER_PASSWORDS_INFO' was added
	* Extended support of ExaGear for more than just Debian 8 (GitHub issue [#25](https://github.com/TS3Tools/TS3UpdateScript/issues/25))
	* Backups are restored to the wrong instance (GitHub issue [#24](https://github.com/TS3Tools/TS3UpdateScript/issues/24))
	! Backups will be saved twice now. Once in /tmp/TS3Tools/ and once in /var/backups/TS3Tools/.

### Version 4.3.1

	! Tested and verified this release: GitHube issue #20 (https://github.com/TS3Tools/TS3UpdateScript/issues/20)
	* Improved deletion of old file binaries ts3server_[linux|freebsd]_[amd64|x86] and tsdns/tsdnsserver_[linux|freebsd]_[amd64|x86]
	* Fixed 'rm: cannot remove `/home/teamspeak/logs': Is a directory'
	* Backups, which couldn't be rolled back due a failed TS3 server update won't be deleted anymore
	* Added the backup path to the error message variable TXT_EXECUTION_MECHANISM_UPDATE_AND_ROLLBACK_FAILED_INFO
	+ Added support for Exagear environments
	* Changed 'password-file' to '.password-file' in all docs
	+ Added hint for max. length of displayed username
	* Improved unzipping of *.tar.bz2 files and importing new SQL files, which caused a failed update (GitHub issue #16)
	! bzip2 is now a new required software package for this script
	+ The update process makes sure, that the ts3server binary is executable now
	* Backup was not available/accessible by the script
	+ Added variable 'TXT_EXECUTION_MECHANISM_BACKUP_DOES_STILL_EXISTS_INFO' for info text, that backup does still exists
	* Fixed './TS3UpdateScript: Zeile 1210: SERVERLIST.txt: No such file or directory'
	* Fixed 'grep: POKELIST.txt: No such file or directory'
	* Fixed 'cat: /path/to/teamspeak/instance/.password-file: No such file or directory'
	+ Added variable 'TXT_EXECUTION_MECHANISM_TEMPORARY_SERVER_PASSWORDS_WERE_NOT_BACKUPED_INFO' to display an information, that temporary passwords were not backuped
	* Fixed non-existing backup, if the rollback failed or if the parameter '--keep-backups' was used (GitHub issue #17)
	+ Added backup strategy for MySQL/MariaDB databases (GitHub issue #18)
	! The rollback feature will import the old version of the database, if the health check and/or update has been failed (SQL backup is saved in /tmp/TS3Tools/TS3UpdateScript/<TS3RootDirectory>/ts3DatabaseBackup.sql)
	! This import will drop every single table first and import it with the same content before the update has been started
	* Updated formatting in CHANGELOG file to see the legend in front of each note
	* Fixed '-su: ./ts3server_startscript.sh: Permission denied' and hided it in the output of TS3UpdateScript
	* Fixed rollback feature: The rollback was successful, but the server wasn't started, due the code for that was missing
	* Converted TS3UpdateScript from DOS to Unix to remove Windows like line breaks (^M)
	* Temporary server passwords: Fixed missing spaces in names, descriptions and so on after restoring them (GitHub issue #21)
	* Temporary server passwords: Creater wasn't set to TS3UpdateScript displayed username due it was just set, if parameter '--inform-online-clients' was set
	+ Added TSDNS status to summary
	! New variables were added: TXT_EXECUTION_MECHANISM_INSTANCE_TSDNS_STATUS, TXT_EXECUTION_MECHANISM_INSTANCE_TSDNS_STATUS_ACTIVE, TXT_EXECUTION_MECHANISM_INSTANCE_TSDNS_STATUS_INACTIVE
	! Updated screenshot "summary"
	* TSDNS wasn't detected as active also if it was in use
	* Fixed issue with stopping and starting TSDNS service due missing return codes

### Version 4.2.0

	* Replaced 'regarding' with 'due' in warning message regarding external storage for files/ directory
	+ Added support for releases 3.0.12 and newer (GitHub issue #13; Regex ^[3-9]+\.[0-9]+\.1[2-9]+\.?[0-9]*$ is used to check this)
	! By updating to the version 3.0.12 or newer, the script will delete the following files: ts3server_[linux|freebsd]_[amd64|x86], tsdns/tsdnsserver_[linux|freebsd]_[amd64|x86]
	* Fixed empty value for Build string in function getBuildOfInstalledTS3Server(), if wether expect nor telnet is installed
	* Changed some parameter information from "Host:string" to "ServerQueryIP:string"
	* Empty ServerQuery IP and Port was displayed in the summary, if wether expect nor telnet is installed and the parameter '--inform-online-clients' was not used
	+ Added TSDNS Binary path to summary
	* Added variable "TSDNS_BINARY" to prevent changing it multiple times in the script
	+ Added prevention for failing 'su: user UNKNOWN does not exist', when the owner of the files is 'UNKNOWN' (GitHub issue #14)
	+ Added some text variables: TXT_COLLECTING_INFORMATION_OWNER_UNKNOWN_PERMISSIONS_INFO, TXT_COLLECTING_INFORMATION_GROUP_UNKNOWN_PERMISSIONS_INFO
	* Beta updates couldn't be downloaded due unknown download link
	* Added a hint to variable 'TXT_EXECUTION_MECHANISM_GET_TEMPORARY_SERVER_PASSWORDS_FAILED', why the backup of temporary server passwords may have failed

### Version 4.1.1

	* Fixed issue with 'invalid serveradmin password', also if the correct one was set (just occured, if either telnet nor expect was installed)
	* Replaced 'mail' with 'any MTA like postfix or exim' in [README.md](https://github.com/TS3Tools/TS3UpdateScript#requirements)

### Version 4.1.0

	! Cronjobs are now only available for TS3UpdateScript users with a valid Hoster script license
	* Improved detection of strings (thanks to Psychokiller for a hint)
	- Removed deprecated TS3UpdateScript
	* Updated [docs/CHANGELOG.md](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/CHANGELOG.md)
	* Updated [docs/INSTALL_USAGE_GUIDE.md](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md)
	* Updated [docs/UPDATE_GUIDE.md](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/UPDATE_GUIDE.md)
	+ Added [docs/BEST_PRACTICES_ANALYZER.md](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/BEST_PRACTICES_ANALYZER.md) for further information to the Best Practices Analyzer (BPA) with instructions how-to fix the issues
	* Fixed installation of cronjob, because the job for the script update task was missing
	* Increased number of tries to fetch files and licensing information from 1 to 3
	* BPA warning 'Use an invalid shell' was not shown, if TeamSpeak server was not touched by the TS3UpdateScript
	* Updated COMMANDLINE_PARAMETER from 'inifile=ts3server.ini' to '${2} inifile=ts3server.ini' to support parameter 'serveradmin_password=newPassword' in ts3server_startscript.sh
	+ Missing update question for script update
	* Fixed issue with '/root/TS3tools/TS3UpdateScript: Line 1606: TS3InstanceInfos.txt: No such file or directory'
	* Fixed faulty chars in cronjob emails (eg. [u [70C[  [0;32mShould be updated  [0m])
	* Improved layout of cronjob output in emails
	- Removed parameter '--cronjob-task' from cronjobs
	* Fixed issue with 'cat: license_key: No such file or directory' by using the parameter '--show-license-key'
	+ Language de_DE

### Version 4.0.0

	* Fully re-developed the script for a higher performance and better structure (functions are now available)
	! IMPORTANT: Update the name of the script in your cronjob file '/etc/cron.d/TS3UpdateScript' or '/etc/fcron.cyclic/TS3UpdateScript', if you are using the cronjob feature
	* Renamed .txt to .md and changed text formatting (GitHub Issue #10)
	+ Added more support for system user, which do not use a valid login shell (GitHub Issue #4; GitHub Pull request #11)
	+ Added pre-validation feature to prevent possible update issues
	+ Added best practices analyzer
	+ Added script licenses
	! [Read README.md](https://github.com/TS3Tools/TS3UpdateScript#script-licenses) for further information regarding script licenses
	+ Added multiple language support
	* Improved performance especially for detecting your installed TeamSpeak 3 server version and poking thousands of clients
	* Updated screenshots in img/ directory
	+ Added parameter to enable debugging (--debug <FILENAME>)
	* Adjusted backup/rollback feature (new backup directory: /tmp/TS3Tools/TS3UpdateScript/)
	+ Added support for temporary server passwords (use parameter --disable-temporary-password-backup to disable it)
	! Temporary server passwords will be restored after a server reboot/update to the same ending date as before

### Version 3.11.7.3

	* Improved detection of latest TeamSpeak 3 server release
	! ATTENTION: Without this fix, your server will may be downgraded!

### Version 3.11.7.2

	* Fixed wrong text for word 'Successful'

### Version 3.11.7.1

	* Fixed issue with missing `]' in line 1100 and 1102
	+ Added script execution time measurement (e.g. Script execution time: 8s)

### Version 3.11.7

	* Fixed error with missing square brackets
	* Fixed wrong text for 'Waiting Time'

### Version 3.11.6.1

	* Fixed issue with update of script self (it also updated ALL instances)
	! Important update! Please update as fast as possible or the script may will update all instances, also if do not wanted

### Version 3.11.6

	* Fixed cronjob installer (not all parameters were saved)
	* Fixed cronjob times (from the sixth instance the minutes are invalid: 60, 70, 80, 90,...) (Thanks to Psychokiller)
	* Cronjobs can now be installed with parameter '--autoupdate-script'
	* Reduced distance between command and description in help menu
	* Removed tab before 'Creating Backup of existing TeamSpeak 3 server'
	! Hint: Faulty server archives can not be installed and you server should still run with the old version. You should see something like this in the output:
	! > tar: Does not look like a „tar“ archive.
	! > gzip: stdin: unexpected end of file
	! > tar: Child returned status 1
	! > tar: Error is not recoverable: exiting now

### Version 3.11.5.1

	* Set default waiting time for cronjob (5 minutes)
	* Parameter '--waiting-time' is now also working in cronjobs

### Version 3.11.5

	* Added a hyphen to each 'su -c' command to prevent unknown issues
	! For further information view issue on GitHub: https://github.com/TS3Tools/TS3UpdateScript/issues/4
	+ Added new parameter '--waiting-time' to give the user the ability to tell the script, that it should wait X minutes before it starts the update process
	+ Added waiting time to output
	! Example: ./TS3UpdateScript.sh --check --waiting-time 10 --delete-old-logs
	+ Added better detection of log paths (Thanks to https://github.com/Gertjanpfsense for this hint)
	+ Added log path to output

### Version 3.11.4

	* Fixed issue with parameter conversion from upper to lower case (--keep-backups -> --kep-backups for example) (Thanks to https://github.com/kam1kaze for this hint)

### Version 3.11.3

	* Replaced $(whoami) with $EUID for reliable user identification (Thanks to https://github.com/psypanda)
	* Parameters are now case insensitive (Thanks to https://github.com/psypanda)
	* Fix error `cat: ./configs/administrator_eMail.txt: No such file or directory` if administrator_eMail.txt does not exist (Thanks to https://github.com/psypanda)

### Version 3.11

	* Fixed issue with non-working detection of latest TS3UpdateScript (added --no-check-certificate)
	+ Added support for IPfire
	+ Added cronjob support for IPfire
	! Known issue: You will not receive any cronjob mails, because package 'mail' does not exists
	! Who works more than me with IPfire and knows the solution?
	* Fixed error message 'basename: missing operand'
	+ Added mechanism to prevent TS3UpdateScript updates to version '' (unknown)

### Version 3.10.4

	* Set default values for ignore_servergroups.txt and ignore_clients.txt
	! Do NOT remove those numbers from the config-files, because ServerQuerys can not be poked!
	* Set example text for update_text.txt and auto_update_text.txt
	* Fixed non-working pokes

### Version 3.10.1

	* Set absolute path for TEMP_* files of the script
	! That should help against non-working client pokes (parameter --inform-online-clients)

### Version 3.9.3
	
	* Fixed issue with detecting installed release and binary, cause of not installed 'telnet' package
	* Renamed sentence 'Latest version is already installed. Nothing to do!' to 'Latest release is already installed. Nothing to do!'
	! If the installed release is not known, the script will expect it as older version yet
	
### Version 3.8.9
	
	+ Added changelog to output of script update
	* Renamed all 'LATEST_VERSION' variables to 'LATEST_STABLE_RELEASE'
	* Adjusted detection of latest stable release
	! Renamed file 'configs/latestStableVersion.txt' to 'configs/latestStableRelease.txt' (the script will rename this file automatic)
	* Renamed all 'INSTALLED_VERSION' variables to 'INSTALLED_RELEASE'
	+ Added parameter '--beta-release' to be able to update your TeamSpeak server to the latest beta release
	+ Added detection for latest beta release
	- Removed needed software 'mktemp', because no temp files are needed anymore
	* Fixed issue with 'rm: missing operand'
	
### Version 3.8.1
	
	* Adjusted TS3UpdateScript cronjob eMail text for selfupdate of script
	+ Added check: If the script is currently just updating itself and no instance, it should stop now after the self-check process
	
### Version 3.8
	
	* Adjusted detection for installed TeamSpeak server version, build and platform
	+ Added "Build" string to summary output
	+ Added support for ignoring all clients of given servergroup ids for parameter '--inform-online-clients' (enter sgid in configs/ignore_servergroups.txt)
	! You have to create this file, if it does not exists
	+ Added support for new dbPlugin 'MariaDB'
	! Since TeamSpeak server version 3.0.11 (Build 1408694433) was the MySQL database replaced by the fork MariaDB (read CHANGELOG of TeamSpeak server version 3.0.11 and newer)
	! If the script is updating from version 3.0.10.3 (Build 1388593719) to 3.0.11 or newer, it also will update your MySQL database to MariaDB
	+ If MySQL/MariaDB database is used, the script will also detect the database username, password and database (used for updates and database fixes)
	! Add your IP address, which is used for connecting as ServerQuery to query_ip_whitelist.txt or the script is may not able to detect your installed version, because it is banned by the server
	! Do not check to often the same instance or you will get banned by the instance!
	
### Version 3.7
	
	+ Added parameter(s) '-v' / '--version' to display the version of the script
	+ Added parameter '--autoupdate-script' for full automate update process of your TS3UpdateScript - excluding configs/
	+ Added support for two new parameters for su-command, if you execute the script with non-root permissions
	* Updated cronjob installer for supporting all parameters
	*/- Removed second needed parameter 'latestStableVersion.txt' for parameter '--latest-version'; it will use the version of configs/latestStableVersion.txt
	! If you have used this feature in past, just remove the parameter to the file
	* Changed text "Installing new cronjob" to "Installing new cronjob in '/etc/cron.d/TS3UpdateScript'" as hint for finding the cronjob file
	! Updated docs/UPDATE_GUIDE.txt
	! Updated docs/INSTALL_USAGE_GUIDE.txt

### Version 3.6.3

	* Deleted first/standard password-file; it will now created with a stream redirection instead of coping the file
	* Changed donation link
	! Extended README.md
	+ --help: Added 'You may will test the latest version first' to parameter '--latest-version'
	* Renamed parameter '--check-for-update' to '--update-script'
	* Changed && to ||, to accept 'y' and 'yes' as answer for the script update
	+ Added facebook fanpage to header of script
	* Temp-file 'auto_update_text.txt' was created in root directory of TS3UpdateScript, but not deleted
	* Fixed non-working script update
	* Set raw-GitHub link for better searching for the latest script version
	* Outsourced TS3UpdateScript update mechnism to own script: .updateScript.sh
	! ATTENTION: Do *NOT* execute the script manually - it's your own risk! Use instead ./TS3UpdateScript.sh --update-script

### Version 3.5.1

	! No code was changed! Be sure, that you've installed the package 'ca-certificates' for fetching the latest script version - for further details execute 'apt-cache show ca-certificates'

### Version 3.5

	* Replaced Shebang '/bin/bash' with '/usr/bin/env bash' to make it more portable
	* Fixed issue with DDoS-Protection of TeamSpeak - the script is now able to identify the latest version (replaced teamspeak.com with teamspeak.de)
	* Changed download mirror from 'files.teamspeak-services.com' to 'dl.4players.de' for server files (reason: files.teamspeak-services.com does not exists anymore)
	+ Added check, if a TeamSpeak server is installed anyway
	*/! Changed default eMail address of 'displayed_user_name.txt', because I've received very much eMails from other servers, which are not owned by me (I've deleted all eMails)
	+ Added '7. Debugging' part to 'INSTALL_USAGE_GUIDE.txt'
	+ Added parameter '--latest-version' - if you are a hoster and want to test the latest version first, you are now able to say the script, that you specify the latest version (just write the version string in a file and tell the script, that you want to us it. Example: ./TS3UpdateScript.sh --check --delete-old-logs --inform-online-clients --latest-version /home/demoLab/latestStableVersion.txt)
	* Adjusted Backup/Rollback feature - you could now run more than one TS3UpdateScript.sh process at the same time, because the backups are saved under '/tmp/ts3server_backup/root/of/installed/ts_server/'
	+ Added parameter '--keep-backups' - if you don't want that the script deletes the backup of your server, you are now able to say this the script
	* Changed file structure (view README.txt for details)
	* '--help' and '-h' are now the same section in code -> reduced the code of the script
	* Removed link to forum, because I received all bug reports and suggestions via eMail (forum was deleted)
	* Changed mail@ts3-tools.info to info@ts3-tools.info everywhere
	* Adjusted '--help' output, because some output was overwritten
	* Fixed check for latest version of TS3 UpdateScript self, because the old link is not longer available

### Version 3.4

	* Fixed non-working update feature for the script self
	! Tried to fetch the version via the ServerQuery command 'version' but this will take 4 seconds more than analyzing the log file of the instance
	! Do you have any further suggestions or bugs? Write me an eMail to mail@ts3-tools.info or open a new topic in the forum: http://www.forum.ts3-tools.info/

### Version 3.3

	* Fixed issue with variable "TERM" from Cronjob
	+ Added status "In Progress" to the actual todo of the script: [ .. ] -> [ OK ] or [ FAILED ]
	* Changed example E-Mail address from file 'administrator_eMail.txt'
	! Please set your OWN E-Mail address! I don't want to receive your E-Mails. ;)
	! HINT: If you change the E-Mail(s) from file 'administrator_eMail.txt', you have to reinstall your cronjob!
	! Set more emails like following: you@domain.com,yourPartner@example.com,me@ts3.de
	* Changed script selfcheck: At first check, if the script is running as root and then check the parameters
	* Changed example text of "auto_update_text.txt" file
	* Adjusted update feature of the script self: it will now also not update the files 'administrator_eMail.txt' and 'ignore_clients.txt'
	* Adjusted output of script (especially for cronjob)
	+ Added length check for displayed username (just 30 chars are allowed)
	* Moved length checks higher
	- Removed "tempfile" for Debian based systems (each system will use 'mktemp' now)
	* Moved 'Searching for latest TeamSpeak 3 server version' higher to adjust the progress of the script especially for the length checks

### Version 3.2

	* Adjusted update feature for the script (it will show you, if a newer version is available; you need to execute './TS3UpdateScript.sh --check-for-update' to update the script)
	* Adjusted checks for given parameters (you are now able to set the parameters in an order like you want)
	! You need to replace the '=' with a 'space' in parameters, which are using it. For example: Instead "./TS3UpdateScript.sh --autoupdate=no" use "./TS3UpdateScript.sh --autoupdate no"
	! You can use each parameter in each order ;)
	- Removed not needed code, cause of adjusted parameter checks
	* Adjusted output of "help" page: './TS3UpdateScript.sh --help' or './TS3UpdateScript.sh -h'
	+ Added E-Mail function: Cronjob will send you an E-Mail with the output of the script
	! To use the E-Mail function, you have to provide your E-Mail address in following file: administrator_eMail.txt
	* Adjusted cronjob - it is an own file now (/etc/cron.d/TS3UpdateScript) and will not edit your existing cronjob/crontab file of root
	+ Added functionality to ignore given clients for poke messages
	! Please provide the 'client_database_id' of each client, which should be ignored for pokes in following file: ignore_clients.txt (each line should contain one id)
	* Adjusted output of starting the "TSDNS server"

### Version 3.1

	* Fixed issue with deleting old logs, if '--autoupdate=yes' is used
	- Removed old software check code
	* Fixed length issue for update text check
	* Set new donations url
	+ Added UID and GID to output summary
	* Adjusted checks for empty variables ('-n' instead of '!= ""')
	* Removed parameter 'password-file'; File 'password-file' will be used, if '--inform-online-clients' is set as parameter
	! Do not rename the 'password-file' file
	! Adjusted INSTALL_USAGE_GUIDE.txt in case of no needed 'password-file' file
	* Adjusted software/package checks: 'telnet' will just be checked, if '--inform-online-clients' is set
	* Adjusted update feature for the script itself - autoupdate will now also check for latest version, but will just show the information
	* Moved code for searching the latest TeamSpeak 3 server version a bit higher, that it can be used for some other code
	+ Added support for update texts: You are now able to use the variable $VERSION to display the latest TeamSpeak 3 server version
	! An example for the update text is shown in the default text file and in the INSTALL_USAGE_GUIDE.txt
	* Adjusted each output text: You will now see, what the script is doing and the script will write on the right side of your screen the status "OK", "FAILED", "ERROR" or "INFO"
	- Removed duplicate code
	- Removed unused code, which was commented
	* Moved "Searching for directories" higher, to use the information for installing cronjob(s)
	+ Added Multi-Instance support for cronjob
	* Update to new TS3UpdateScript will just update your CHANGELOG.txt, INSTALL_USAGE_GUIDE.txt and TS3UpdateScript.sh
	+ Added support for different serveradmin passwords
	! The script will copy the 'password-file' file from the current directory to each TeamSpeak 3 server root directory and will use that file instead of the file from the same directory, where the TS3UpdateScript is located
	! You need to run the script once, that the 'password-file' file is copied to each directory: ./TS3UpdateScript.sh --check

### Version 3.0 RC5

	* Fixed issue with older egrep versions (egrep: invalid option -- E)
	* Adjusted old text for '--inform-online-clients' - password-file and not password is needed as parameter
	* Changed "return 0" to "exit 0" in last line of script
	* Fixed issue with mktemp for RedHat/CentOS (mktemp: cannot create temp file /tmp/ts3_download_page-XXXXX.tmp: File exists)
	+ Added text-files for update messages (auto_update_text.txt and update_text.txt)
	! If you want your own information text for online clients, you have to edit these two files
	! You need the package/software 'sed', if you want to inform your online clients
	* '--inform-online-clients' will now poke each client and not send a global message, because the most users don't read server messages, but pokes for sure
	* '--autoupdate=yes' will save all parameters now
	* Adjusted waiting time (from 5 seconds to 10 seconds) to check, if TeamSpeak 3 Server is still running
	* Fixed issue with package/software check for RedHat/CentOS distributations
	+ Added Multi-Instance support (because of high demand)
	* Changed outputs of script
	* Adjusted '--autoupdate=yes' parameter: password-file will be saved with absolute path and new parameter '--path' will be saved
	* Fixed issue with '--inform-online-clients': If it was parameter 4 it was not working
	* Fixed issue with 'ts3server.ini' (it will be used if this file exists)
	* '--help' and '-h' do not need root permissions anymore
	* Fixed issue with non-displayed question about updating and abort of script instead
	* Changed piped to input redirection (better performance)
	+ Validating content of password-file (if password is incorrect, it will not try to inform online clients)
	* Query-IP address is default '127.0.0.1'; if ts3server.ini exists, it will be used the given query_ip address, if it is not '0.0.0.0'
	* ts3server_startscript.sh: COMMANDLINE_PARAMETERS '${2}' will be replaced with 'ts3server.ini', if the ts3server.ini file exists or the MySQL database is used
	+ Added option '--path' to set a static TeamSpeak 3 server path
	+ Added TS3UpdateScript update function
	! You will need a further software package therefore: unzip
	* Adjusted software package checks
	+ Added feature to set your own poke message sender name: displayed_user_name.txt

### Version 2.0

	* Changed cronjob parameters from 'day of week', because 0 means to be sunday and not monday (I've also change the description. I ment AM, not PM.)
	* Changed sequence of starting TS3 and TSDNS server (1. TSDNS Server, 2. TS3 Server)
	* Changed code of starting TSDNS server, because it searched the config file 'tsdns_settings.ini' in the powered working directory
	+ Added INSTALL_USAGE_GUIDE.txt for detailed installation and usage informations
	+ Added system detection for Debian and RedHat/CentOS
	! Script supports just Debian and RedHat/CentOS systems
	* Adjusted package installation status
	* Adjusted user and group detection of old files (it should be a bit faster than before)
	* Removed rsync parameter "-v" and "> /dev/null", because without "verbose output" is no output shown ;)

### Version 1.6

	* Adjusted detecting of TSDNS, because it had some problems with the 'netstat' command

### Version 1.5

	+ Added TSDNS support
	+ Added FreeBSD support
	* Adjusted detection of architecture, because of lesser code for TSDNS support

### Version 1.4

	* Fixed little bug with "could not find INI-file", if SQLite database is/was used (the script just aborted and done nothing)

### Version 1.3

	+ Added MySQL support
	* Adjusted performance of script (it should work faster than version 1.2)
	- Deleted an unneeded line, which was called some lines before (nothing was done with this line)

### Version 1.2

	+ Added feature to inform online clients
	* Adjusted cronjob feature (use all parameters also for cronjobs)
	* Adjusted cronjob entry: sh -> /bin/bash
	! Reason: The script is written for the bash
	+ Added current installation details

### Version 1.1

	+ Added optional feature to delete old logs (second parameter '--delete-old-logs')
	* Fixed issue with server start after successfull update
	* Fixed issue with imports, if the file already existed
