#!/bin/bash

# download latest version and parse the darwin version
allDarwin=$(curl -sSL 'https://releases.mondoo.io/mondoo/latest.json?ignoreCache=1' | jq '.files[] | select(.filename | match("darwin"; "g"))')
echo $allDarwin

for build in "arm64" "amd64"
do
    echo "---- $build ----"
    latestDarwin=$(echo $allDarwin | jq ". | select(.filename | match(\"$build\"; \"g\"))")
    filename=$(echo "$latestDarwin" | jq '.filename')
    hash=$(echo "$latestDarwin" | jq '.hash')
    version=$(echo "$latestDarwin" | jq '.filename | capture("mondoo\/(?<version>\\d+.\\d+.\\d+)\/mondoo")' | jq '.version' )

    echo $filename
    echo $version
    echo $hash
    echo "--------"

    sed -E -i=.back "/#${build}sha/s|\".*\"|${hash}|g" Formula/mondoo.rb
    sed -E -i=.back "/current_version=/s|\".*\"|${version}|g" Formula/mondoo.rb
done
