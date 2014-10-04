#!/usr/bin/env bash

# Update Dateien
git add TS3UpdateScript.sh
git add LICENSE_GNU_GPL.txt
git add README.md
git add updateGithub.sh
git add testumgebung/detection.sh
git add testumgebung/test.sh
git add .updateScript.sh
git add configs/auto_update_text.txt
git add configs/ignore_clients.txt
git add configs/ignore_servergroups.txt
git add configs/latestStableRelease.txt
git add configs/displayed_user_name.txt
git add configs/administrator_eMail.txt
git add configs/update_text.txt
git add docs/CHANGELOG.txt
git add docs/INSTALL_USAGE_GUIDE.txt
git add docs/UPDATE_GUIDE.txt

# Commit Begründung
git commit -m "Read docs/CHANGELOG.txt"

# Push Commit auf Github
git push -u origin master
