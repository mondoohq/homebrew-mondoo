#!/bin/bash

# download latest version and parse the darwin version
latestDarwin=$(curl -sSL 'https://releases.mondoo.io/mondoo/latest.json' | jq '.files[] | select(.filename | match("darwin_amd64"; "g"))')
echo $latestDarwin

filename=$(echo "$latestDarwin" | jq '.filename')
hash=$(echo "$latestDarwin" | jq '.hash')
version=$(echo "$latestDarwin" | jq '.filename | capture("mondoo\/(?<version>\\d+.\\d+.\\d+)\/mondoo")' | jq '.version' )

echo $filename
echo $version
echo $hash

function bump {
	search='(current_version=\s*)\".*\"(.*)'
	replace="\1${version}\2"
	sed -i ".tmp" -E "s/${search}/${replace}/g" "$1"
	rm "$1.tmp"

  search='(current_sha256=\s*)\".*\"(.*)'
	replace="\1${hash}\2"
  sed -i ".tmp" -E "s/${search}/${replace}/g" "$1"
	rm "$1.tmp"
}

bump "Formula/mondoo.rb"

