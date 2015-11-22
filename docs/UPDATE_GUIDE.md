# UPDATE GUIDE

This file shows you, how you can update the TS3UpdateScript.

## Table of content

- [How-To Update manually](#)
- [How-To Update automate](#)
- [How-To Update automate using cronjob](#)

## How-To Update manually

1. Check the requirements for this script (can be found in [README.md](https://github.com/TS3Tools/TS3UpdateScript#requirements))
2. Read the [docs/CHANGELOG.md](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/CHANGELOG.md) (important information are marked with a exclamation mark ("!"))
3. Download the latest version from https://github.com/TS3Tools/TS3UpdateScript

  root@tux:~# wget https://github.com/TS3Tools/TS3UpdateScript/archive/master.zip

4. Unzip and replace all old TS3UpdateScript files excluding the configs/ directory with the latest version

  root@tux:~# unzip master.zip TS3UpdateScript-master/* -x TS3UpdateScript-master/configs/*

5. Check, if your used parameters have been changed or not and adjust them, if needed (read [docs/CHANGELOG.md](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/CHANGELOG.md) therefore)

## How-To Update automate

1. Run the script with the parameter '--update-script'

  root@tux:~# ./TS3UpdateScript --update-script

2. The script will check for newer version and will ask you, if you want to update the script. Enter 'y' or 'yes', if you want to start the update process for the script
3. Check, if your used parameters have been changed or not and adjust them, if needed (read [docs/CHANGELOG.md](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/CHANGELOG.md) therefore)

## How-To Update automate using cronjob

The cronjob feature is just available with the 'Hoster' license. Read [here](https://github.com/TS3Tools/TS3UpdateScript#script-licenses) for further license information.

1. Install a new cronjob and/or make sure, that you've installed following cronjob line

  root@tux:~# ./TS3UpdateScript --install-cronjob --check --inform-online-clients --delete-old-logs

  45 2 * * 1  root /path/to/TS3UpdateScript --cronjob-task --update-script

The next cronjob will check for a newer version and will update the TS3UpdateScript if needed. Please always take a look at the [docs/CHANGELOG.md](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/CHANGELOG.md) and [requirements](https://github.com/TS3Tools/TS3UpdateScript#requirements).
