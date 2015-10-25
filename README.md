# TS3UpdateScript

**TS3UpdateScript** is the most used bash-script by companies to automate and optimaze the TeamSpeak 3 server update process. It is the fastest script you have ever seen for this task.

It checks, if a newer version for your TeamSpeak 3 server instance is available or not. If yes, you can choose, if the script should update the server or not. You also have some parameters like "delete old logs files" and so on. Well... If you don't want to update your TeamSpeak 3 server manually, you can use this script. This script is doing ALL steps for a correct update process of your TeamSpeak 3 server.

[Open CHANGELOG](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/CHANGELOG.md)

[Open install and usage guide](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md)

[Open upgrade guide](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/UPDATE_GUIDE.md)

[Open GNU GPLv3 license](https://github.com/TS3Tools/TS3UpdateScript/blob/master/LICENSE_GNU_GPL.md)

![Help menu](https://raw.githubusercontent.com/TS3Tools/TS3UpdateScript/master/img/TS3UpdateScript_Help_Page.png)
![Settings summary](https://raw.githubusercontent.com/TS3Tools/TS3UpdateScript/master/img/TS3UpdateScript_Settings_Summary.png)
![Example Output](https://raw.githubusercontent.com/TS3Tools/TS3UpdateScript/master/img/TS3UpdateScript_Example_Summary.png)

## Developers

  * Sebastian Kraetzig [info@ts3-tools.info]

## Main features

- Auto detection of
  - TeamSpeak server instances installation directories
  - Installed and latest (stable or beta) TeamSpeak server version as well as architecture and binary
    - You may will test the latest version for a while, so you can set 'your' latest version (View parameter '--set-version' with './TS3UpdateScript.sh --help')
  - File permissions of current installed TeamSpeak server
  - Used database type
  - TSDNS usage
  - ServerQuery IP and port
  - Latest version of the TS3UpdateScript self
- Backup as rollback, if the newer TeamSpeak server version is not compatible or not working
- Deletes old logs, if you want to (parameter '--delete-old-logs')
- Informs online clients via poke message, if you want to (parameter '--inform-online-clients')
- Test feature for informing online clients via poke message (parameter '--test-inform-online-clients')
- Keeps rollback backup, if you want to (parameter '--keep-backups')
- Individual waiting time between pokes and update process (parameter '--waiting-time-in-minutes')
- Backup and restore of temporary virtual server passwords
- Cronjob (CRON) for (weekly) fully automated update process (it's manually adjustable)
- Multiple language support (parameter '--locale')
- Easy use of debug function (parameter '--debug')

## Special features

- Pre-Validation of collected data to prevent possible update issues
- Best Practices Analyzer
- Debug feature, if you got some issues with the script

## Stay tuned!

- [Official Project Homepage](https://www.ts3-tools.info/)
- [facebook Fanpage](https://www.facebook.com/TS3Tools)
- [GitHub](https://github.com/TS3Tools/TS3UpdateScript/)

## Available Languages

Verified:
- en_US

Need Review:
- None

### Help us

We can not translate this script in each language, because we do not speak each language. But you can help us to get more language support by creating an own new language file with your mother language! And if you want to, send your translation to our email address above, that we can add your translation to the next version. As thank you we will name you in this document, if you want to.

Just grab a copy of your language file, which you understand and translate the content between the two quotation marks. If you think it is ok, you can send us this file via email and we will add it to the TS3UpdateScript. You also can check it in the GitHub Project as new "Issue".

## Script licenses

Name | Ideal for | Restrictions | Free Support | Costs
:------------- | :------------- | :------------- | :------------- | :-------------
Non-Profit | Unlicensed, NPL, AAL | Single Instance, lesser parameters | No | Free of charge / 'Pay what you want'-Donation
Hoster | ATHP | None | Yes | 79,99 EUR

### Get Hoster license

Send me your license information to get a invoice, which you need to pay:

  user@tux:~$ ./TS3UpdateScript --send-license-information [Your invoice E-Mail address]

  user@tux:~$ ./TS3UpdateScript --send-license-information you@example.com

Hint: You should receive a copy of this email within a few minutes. If not, your server is may not able to send emails. Please follow the alternative instructions instead.

Alternative you can send me those details manual via email to [info@ts3-tools.info](info@ts3-tools.info):
- Your (invoice) E-Mail address
- Public/WAN IP address, where you want to use the script
- License key of your script (Parameter '--show-license-key')

If I have received everything, I will add you to the list of hosters.

## Donations

**TS3UpdateScript** is free software and is made available free of charge. Your donation, which is purely optional, supports me at improving the software as well as reducing my costs of this project. If you like the software, please consider a donation. Thank you very much!

[Donate with PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7ZRXLSC2UBVWE)

## Usage

All you need to do to get the list of available options/parameters is:

  user@tux:~$ sudo ./TS3UpdateScript --help

All you need to do to execute an update process is:

  user@tux:~$ sudo ./TS3UpdateScript --check

You also can use the tab auto-completion of this script, which will be installed after the first execution of the TS3UpdateScript and a relog of the Linux user:

  user@tux:~$ sudo ./TS3UpdateScript --check [TAB][TAB]

  user@tux:~$ sudo ./TS3UpdateScript --check --del[TAB]

## Parameters / Options

**Multi usable** parameters can be combined, while **single usable** can just be used without any other parameter(s). The order of any parameter is irrelevant - you can use them as you want to.

### Multi usable

Parameter | Description
:------------- | :-------------
--check | Checks, if a newer version for your instance is available
--delete-old-logs | Deletes old TeamSpeak 3 server logs while update process
--inform-online-clients | Sends the configured poke message to each online client on each virtual server, that the server will be updated (if you enter 'Yes, update!')
--keep-backups | Keep created backups by the script
--waiting-time-in-minutes [MINUTES] | Optionally the script can wait X minutes before it starts the update process
--disable-temporary-password-backup | Disable feature to backup temporary passwords
--set-release | Do not use the official latest release. Use instead the set release from the given file configs/latestStableRelease.txt
--beta-release | With this parameter you are able to detect and update your TeamSpeak server to the latest beta release
--locale [LANGUAGE-CODE] | Change language of this script to some of the available under languages/verified/ directory. Default is en_US.
--debug [DEBUG_FILENAME] | Enables debugging and writes output to file
--install-cronjob | Installs weekly cronjob for monday at 3 AM (= 03:00 O'clock) with your given options

#### Examples

  user@tux:~$ sudo ./TS3UpdateScript --check

  user@tux:~$ sudo ./TS3UpdateScript --check --delete-old-logs

  user@tux:~$ sudo ./TS3UpdateScript --check --keep-backups

  user@tux:~$ sudo ./TS3UpdateScript --check --delete-old-logs --inform-online-clients 

  user@tux:~$ sudo ./TS3UpdateScript --check --delete-old-logs --waiting-time-in-minutes 30

  user@tux:~$ sudo ./TS3UpdateScript --check --delete-old-logs --waiting-time-in-minutes 30 --inform-online-clients --keep-backups

### Single usable

Parameter | Description
:------------- | :-------------
-h OR --help | Displays this help page
-v OR --version | Displays version of this script
--display-settings | Displays settings from config files in configs/
--test-inform-online-clients | Execute test poke with current settings
--update-script | Updates the TS3UpdateScript to the latest version
--show-license-key | Displays TS3UpdateScript license key
--send-license-information [EMAIL] | Sends license information to info@ts3-tools.com to get hoster license ([see Script Licenses](https://github.com/TS3Tools/TS3UpdateScript#script-licenses)!)
--deinstall-cronjob | Deinstalls weekly cronjob

#### Examples

  user@tux:~$ sudo ./TS3UpdateScript -h

  user@tux:~$ sudo ./TS3UpdateScript --help

  user@tux:~$ sudo ./TS3UpdateScript --display-settings

  user@tux:~$ sudo ./TS3UpdateScript --test-inform-online-clients

  user@tux:~$ sudo ./TS3UpdateScript --update-script

  user@tux:~$ sudo ./TS3UpdateScript --send-license-information mail@example.com

## Requirements

- Linux (should work on the most distributations; below a list of explicit tested distributations)
  - Debian 7 & 8
  - Ubuntu 15
  - CentOS 7
  - OpenSUSE 13
  - Fedora 21
  - IPFire 2
- One or more installed TeamSpeak 3 server instances on a Root server/VPS/virtual machine
- Software packages
  - Required
    - bash
    - rsync
    - wget
    - grep
    - sed
    - unzip
  - Optional
    - mail (for receiving cronjob mails)
    - expect (if you want to inform online clients about updates and get a higher detection rate of properties/settings)
    - telnet (if you want to inform online clients about updates)
- root user access on your Linux system (below a list of some reasons, why the script needs root permissions)
  - Automated detection of one or more TeamSpeak 3 server instances
  - Detecting and changing/adjusting file/directory permissions after update process
  - Creating a backup
  - Installing a cronjob

## Supports

- Linux and FreeBSD binary
- SQLite and MySQL as well as MariaDB database setups
- TSDNS
- Temporary virtual server passwords

## Work flow of the script

First it will check, if a newer version for the script self is available and afterwards it will check your installed version of each instance against the latest available version from teamspeak.de. It also will detect, if you are using TSDNS, SQLite or MySQL database and so on. If a newer version is available, the script will do following steps:

1. Download latest and named TeamSpeak 3 server files from 4players.de
2. Inform online clients on all virtual servers (if you want to; parameter '--inform-online-clients' needed)
3. Stopp running TSDNS (if used)
4. Backup temporary virtual server passwords (if any is available)
5. Stopp running server instance gracefully
6. Delete old logs (if you want to; parameter '--delete-old-logs' needed)
7. Create backup of currently running TeamSpeak 3 server in '/tmp/TS3Tools/TS3UpdateScript/'
8. Unzip downloaded TeamSpeak 3 server files
9. Import licensekey (if available), database and Query IP Black- and Whitelist from backup
10. Import TSDNS settings file (if used)
11. Delete ts3server.pid, if exists for correct start
12. Delete downloaded TeamSpeak 3 server files
13. Set ownership and group of files like before update
14. Start TSDNS (if was used)
15. Add commandline parameter to new ts3server_startscript.sh if INI-file is used
16. Start updated TS3 server
17. Restore temporary virtual server passwords (if any was backuped)
18. Script waits 15 seconds and checks, if the server is running
19. If the server is not running, the rollback will be executed
20. Clean up system from created and downloaded files for the update process

Those steps will the script execute for each installed instance, which will be checked.

The files/ directory will not be touched by the script - also not backuped!

## Used Ressources by the script

Protocol | Host/IP  | Used for | How often?
:------------- | :------------- | :------------- | :-------------
https | www.ts3-tools.info | Licensing server | Every 7 days or always, if your license is incorrect
http | dl.4players.de | Download server for TeamSpeak 3 server files | Each execution of the TS3UpdateScript
https | raw.githubusercontent.com | Server for checking latest TS3UpdateScript version | Each execution of the TS3UpdateScript
https | github.com | Download server for TS3UpdateScript files | Just if you update the TS3UpdateScript

## Directory Structure - Where can I find which file?

Path  | Description
:------------- | :-------------
.  | README.md, TS3UpdateScript.sh, .updateScript.sh, .ts3updatescript and the copy of the license
./docs/  | Install and upgrade guide as well as changelog
./configs/  | Configuration files
./languages/  | Language files

## Why got this script a high version number?

Because of the TeamSpeak 3 Server updates, customer wishes and suggestions to the script, however, constantly extended or optimized, which is the reason why it will never have a "final" version level.

The script is ready and fully functional.
