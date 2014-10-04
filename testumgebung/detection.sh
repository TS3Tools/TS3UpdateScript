#!/usr/bin/env bash

# Detect latest stable version
wget 'http://dl.4players.de/ts/releases/?C=M;O=D' -q -O - > TEMP_STABLE_RELEASES.txt
cat TEMP_STABLE_RELEASES.txt | grep -i dir | egrep -o '<a href=\".*\/\">.*\/<\/a>' | egrep -o '[0-9\.?]+' | uniq > TEMP_STABLE_RELEASES_NUMBERS.txt

while read stable_release; do
	wget --spider -q http://dl.4players.de/ts/releases/$stable_release/teamspeak3-server_linux-amd64-$stable_release.tar.gz
	if [[ $? == 0 ]]; then
		LATEST_STABLE_RELEASE="$stable_release"
		break
	fi
done < TEMP_STABLE_RELEASES_NUMBERS.txt

rm TEMP_STABLE_RELEASES.txt TEMP_STABLE_RELEASES_NUMBERS.txt

# Detect latest beta version
wget 'http://dl.4players.de/ts/releases/pre_releases/server/?C=M;O=D' -q -O - > TEMP_BETA_PRERELEASES.txt
cat TEMP_BETA_PRERELEASES.txt | grep -i dir | egrep -o '<a href=\".*\/\">.*\/<\/a>' | egrep -o '[0-9\.?]+-Beta-[0-9]+' | uniq > TEMP_BETA_PRERELEASES_NUMBERS.txt

while read beta_release; do
	BETA_RELEASE_NUMBER="$(echo $beta_release | egrep -o '^[0-9\.?]+')"
	wget --spider -q http://dl.4players.de/ts/releases/pre_releases/server/$beta_release/teamspeak3-server_linux-amd64-$BETA_RELEASE_NUMBER.tar.gz
	if [[ $? == 0 ]]; then
		LATEST_BETA_RELEASE="$beta_release"
		break
	fi
done < TEMP_BETA_PRERELEASES_NUMBERS.txt

rm TEMP_BETA_PRERELEASES.txt TEMP_BETA_PRERELEASES_NUMBERS.txt

echo "Latest Stable Version: $LATEST_STABLE_RELEASE"
echo "Latest Beta Version: $LATEST_BETA_RELEASE ($BETA_RELEASE_NUMBER)"


if [ -f temp_bla*.txt ]; then
	rm temp_bla*.txt
fi
