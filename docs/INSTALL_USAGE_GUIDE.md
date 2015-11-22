# INSTALL AND USAGE GUIDE

This file shows you, how you can install and use the TS3UpdateScript. This file is always referred to the attached TS3UpdateScript.

## Table of content

- [Requirements](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md#requirements)
- [Installation](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md#installation)
- [Usage](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md#usage)
- [Update text examples](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md#update-text-examples)
	- [Available variables for update text](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md#available-variables-for-update-text)
- [Usage examples](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md#usage-examples)
- [How-To get "client_database_id"](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md#how-to-get-client_database_id)
- [How-To get "sgid"](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md#how-to-get-sgid)
- [Debugging](https://github.com/TS3Tools/TS3UpdateScript/blob/master/docs/INSTALL_USAGE_GUIDE.md#debugging)

## Requirements

[Show requirements](https://github.com/TS3Tools/TS3UpdateScript/blob/master/README.md#requirements)

## Installation

a) Download the TS3UpdateScript from addons.teamspeak.com: http://addons.teamspeak.com/directory/tools/miscellaneous/Script-Automated-TeamSpeak-3-update-with-version-checker.html
					or from GitHub.com: https://github.com/TS3Tools/TS3UpdateScript/

b) Unzip the downloaded archive on your Linux server:
   For example: unzip TS3UpdateScript.zip

   HINT: You can unzip and use the script from each directory of your server which you want to.

c) Make the script executable:

  user@tux:~$ chmod +x TS3UpdateScript

d) Set your configuration values:
- auto_update_text.txt
  This file/text will be used, if the cronjob executes the script. The server informs your online clients and will wait 5 minutes before it starts the update process.
- update_text.txt
  This file/text will be used, if you are executing the script manually. The update process starts, if you hit "yes".
- displayed_user_name.txt
  This file contains the username, which will be displayed for poke messages
- ignore_clients.txt
  This file contains client_database_id's of users, which should not get any poke messages about updates
  HINT: Do NOT remove the number 1 from this file!
- ignore_servergroups.txt
  This file containts sgid's of servergroups, which should not get any poke messages about updates
  HINT: Do NOT remove the number 1 and 2 from this file!
- password-file
  This file contains the 'serveradmin' password to connect to your server
  HINT: The password-file is located in each TeamSpeak 3 server root directory

HINT: Both texts has a limitation of 100 characters. The script checks at the start, if you are using a valid length. After editing the file(s), you should run the script once manually to check and see, if the length is ok.

f) Finish! Read the USAGE below to see, how you can use it

## Usage

HINT: The script needs root permissions, because it's detecting all informations automatical and it's also using some commands, which are just available with root permissions.

a) Simply start the script with following syntax:

  user@tux:~$ sudo ./TS3UpdateScript OPTION(S)

b) The script has an included "help"-page:

  user@tux:~$ ./TS3UpdateScript --help

  user@tux:~$ ./TS3UpdateScript -h

## Update text examples

Following you can see some examples, how you can fill your 'auto_update_text.txt' and 'update_text.txt' files:

  * This server will be updated to version $VERSION in 5 minutes. Please wait...
  * Server update to version $VERSION in 5 minutes.
  * The server will restart for server update. New version $VERSION will be installed.
  * The server will be updated. Please wait a while...
  * An update will be executed. Please try to reconnect in a few seconds...

### Available variables for update text

  * $VERSION (returns latest version; for example: 3.0.11.4)

## Usage examples

Following you can see some examples how you can use the script.

Easy check; Just check, if a newer TeamSpeak 3 server version is available. If yes it asks you, if you want to update it

  user@tux:~$ ./TS3UpdateScript --check

Check with deleting logs; Same as above, but if it updates your server, it also will delete your old server logs

  user@tux:~$ ./TS3UpdateScript --check --delete-old-logs

Easy check with informing online clients; Checks if a newer version is available and informs online clients about a update process, if you are updating the server (password-file must include your 'serveradmin' password); informing will just work, if the serveradmin password is correct

  user@tux:~$ ./TS3UpdateScript --check --inform-online-clients

 Check with deleting logs and informing online clients; Same as above, but also deletes old logs (password-file must include your 'serveradmin' password)

  user@tux:~$ ./TS3UpdateScript --check --delete-old-logs --inform-online-clients

Check with deleting logs and informing online clients; Same as above, but works just with the given directory

  user@tux:~$ ./TS3UpdateScript --check --delete-old-logs --inform-online-clients --path /path/to/teamspeak_server/

Installs weekly check cronjob for monday at 3 AM
Same as './TS3UpdateScript.sh --check', but it's automated - you don't have to enter yes or no. Default is 'yes'
Don't forget to provide your E-Mail address in the following file: administrator_eMail.txt

  user@tux:~$ ./TS3UpdateScript --install-cronjob --check

Same as above, but it will also delete old logs

  user@tux:~$ ./TS3UpdateScript --install-cronjob --check --delete-old-logs

Installs weekly check cronjob for monday at 3 AM; it also informs online clients and will wait 5 minutes for updating (password-file must include your 'serveradmin' password)

  user@tux:~$ ./TS3UpdateScript --install-cronjob --check --inform-online-clients

Installs weekly check cronjob for monday at 3 AM; it also deletes old logs, informs online clients and will wait 5 minutes for updating (password-file must include your 'serveradmin' password)
This is my (Sebastian Kraetzig) personal favourite :)

  user@tux:~$ ./TS3UpdateScript --install-cronjob --check --delete-old-logs --inform-online-clients

Deinstalls weekly cronjob of monday at 3 AM

  user@tux:~$ ./TS3UpdateScript --deinstall-cronjob

HINT: If you are installing a cronjob, it will look like following:

  user@tux:~$ ./TS3UpdateScript --install-cronjob --check --delete-old-logs --inform-online-clients

   0 3 * * 1  root /path/to/TS3UpdateScript --cronjob-task --path /path/to/teamspeak/instance1 --check --delete-old-logs --inform-online-clients
  15 3 * * 1  root /path/to/TS3UpdateScript --cronjob-task --path /path/to/teamspeak/instance2 --check --delete-old-logs --inform-online-clients
  30 3 * * 1  root /path/to/TS3UpdateScript --cronjob-task --path /path/to/teamspeak/instance3 --check --delete-old-logs --inform-online-clients
  45 3 * * 1  root /path/to/TS3UpdateScript --cronjob-task --path /path/to/teamspeak/instance4 --check --delete-old-logs --inform-online-clients
   0 4 * * 1  root /path/to/TS3UpdateScript --cronjob-task --path /path/to/teamspeak/instance5 --check --delete-old-logs --inform-online-clients
  15 4 * * 1  root /path/to/TS3UpdateScript --cronjob-task --path /path/to/teamspeak/instance6 --check --delete-old-logs --inform-online-clients

The "TS3UpdateScript" cronjob can be found here: /etc/cron.d/TS3UpdateScript

You also can change the parameter list per instance. Just edit your cronjob file. If you just want to inform online clients on the instance 3, you can set the parameter --inform-online-clients on just this instance.

## How-To get "client_database_id"

1. Open a telnet connection to your TeamSpeak 3 server on the ServerQuery Port (default: 10011)

2. Login wih your ServerQuery account:

  login serveradmin very$SecretPassword2014

3. Connect to your virtual server if needed:

  use sid=1

or

  use port=9987

4. Fetch the clientlist of your virtual server:

  clientlist

5. Copy & Paste the whole output of "clientlist" in your editor/notepad and search with "Strg/Ctrl" and "F" the clients nickname, which client_database_id you need/want
   You will find something like this:

  clid=5 cid=2034 client_database_id=1243 client_nickname=Sebbo client_type=0

   HINT: Each clientinfo is between two pipes (|)!

6. Save the client_database_id in the file 'ignore_clients.txt' in a extra line to ignore that client for update pokes
   Here for example: 1243

## How-To get "sgid"

1. Open a telnet connection to your TeamSpeak 3 server on the ServerQuery Port (default: 10011)

2. Login wih your ServerQuery account:

  login serveradmin very$SecretPassword2014

3. Connect to your virtual server if needed:

  use sid=1

or

  use port=9987

4. Fetch the servergrouplist of your virtual server:

  servergrouplist

5. Copy & Paste the whole output of "servergrouplist" in your editor/notepad and search with "Strg/Ctrl" and "F" the servergroup names, which sgid you need/want
   You will find something like this:

  sgid=6 name=Server\sAdmin type=1 iconid=300 savedb=1 sortid=0 namemode=0 n_modifyp=75 n_member_addp=75 n_member_removep=75

   HINT: Each servergroup info is between two pipes (|)!

6. Save the sgid in the file 'ignore_servergroups.txt' in a extra line to ignore all clients of this group for update pokes
   Here for example: 6

## Debugging

You will not need to debug and fix the issue by yourself. Just enable debugging of the script and send me the debug file via eMail to info@ts3-tools.info.

1. Execute the script with those parameters you want plus '--debug' and provide any non-existing filename

  user@tux:~$ ./TS3UpdateScript --check --delete-old-logs --inform-online-clients --debug debug.txt

2. Send me the debug file via email

3. Wait for my response
