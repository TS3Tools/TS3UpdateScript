# TS3UpdateScript Best Practices

Here, you will find the latest best practices for the usage of the **TS3UpdateScript**. This file is always referred to the attached TS3UpdateScript.

## Table of content

- [General information](#general-information)
- [Based on requirements](#based-on-requirements)
	- [Performance](#performance)

## General information

- Optionally delete old logs, if they are not needed by your monitoring server for example.
- Informing hundreds or even thousands of clients can take up to multiple minutes. In the meanwhile, some clients could already have left the server(s).
- Disabling the ex- and import of the temporary passwords save a lot of time.

## Based on requirements

### Performance

Following a table with all optional and related parameters for updating a TeamSpeak 3 server:

Recommendation | Parameter | Description
:------------- | :------------- | :-------------
Optional | --delete-old-logs | Deletes old TeamSpeak 3 server logs while update process
No | --inform-online-clients | Sends the configured poke message to each online client on each virtual server, that the server will be updated (if you enter 'Yes, update!')
Optional | --keep-backups | Keep created backups by the script
Optional | --waiting-time-in-minutes [MINUTES] | Optionally the script can wait X minutes before it starts the update process
Yes | --disable-temporary-password-backup | Disable feature to backup temporary passwords
Optional | --set-release | Do not use the official latest release. Use instead the set release from the given file configs/config.all
No | --beta-release | With this parameter you are able to detect and update your TeamSpeak server to the latest beta release
Yes | --path | Specify the absolute path to the TS3 server instance, which should be updated instead of searching for all

- ``Optional`` means, that it is up to you, if you want to use it or not. It does not really impact the performance of the script.
- ``Yes`` mans, that you should use this parameter, because it helps to increase the performance.
- ``No`` means, that you should NOT use this parameter, because it reduces the performance.
