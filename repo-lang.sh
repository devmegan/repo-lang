#!/bin/bash

if [ -z "$1" ]
then
  echo "You'll need to provide the GitHub username as the first argument."
  exit 1
fi

gh_username=$1

echo "Fetching repo info for $gh_username..."
echo

url="https://api.github.com/users/${gh_username}/repos"

curl -s "${url}"