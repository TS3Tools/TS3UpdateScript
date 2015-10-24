# UPDATE GUIDE

This file shows you, how you can update the TS3 UpdateScript.

## Table of content

1. How-To Update manually
2. How-To Update automate
3. How-To Update automate using cronjob

## How-To Update manually

1. Download the latest version from https://github.com/TS3Tools/TS3UpdateScript
2. Check the requirements for this script (can be found in INSTALL_USAGE_GUIDE.txt as well as README.md)
3. Read the CHANGELOG.txt (important information are marked with a exclamation mark ("!"))
4. Unzip and replace the old TS3UpdateScript.sh with the latest version
5. Check, if your used parameters have been changed or not and adjust them, if needed (read CHANGELOG.txt therefore)

## How-To Update automate

1. Run the script with your needed/used parameters or just with '--check'
2. The script will check for newer version and will ask you, if you want to update the script. Enter 'y' or 'yes', if you want to start the update process for the script
3. Check, if your used parameters have been changed or not and adjust them, if needed (read CHANGELOG.txt therefore)

## How-To Update automate using cronjob

1. Deinstall old cronjob:

  user@tux:~$ ./TS3UpdateScript --autoupdate no

2. Install new cronjob with your needed parameters as well as with the needed parameter '--autoupdate-script' - for example:

  user@tux:~$ ./TS3UpdateScript --check --inform-online-clients --autoupdate-script --delete-old-logs --autoupdate yes

   HINT: The TS3UpdateScript will sort the parameters in cronjob to best practise. ;)

3. Finish - The next cronjob will check for a newer version and will update the TS3UpdateScript if needed
