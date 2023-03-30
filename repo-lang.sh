#!/bin/bash

if [[ -z "$1" || $@ == "--help" || $@ == "-h" ]]; then
  echo "You'll need to provide the GitHub username as the first argument."
  echo
  echo "Usage: $0 <github_username:str>"

  exit 1
fi

gh_username=$1

echo "Fetching repo info for '$gh_username'..."
echo

url="https://api.github.com/users/${gh_username}/repos"

if output=$(curl -s $url | jq -r '.[] | "\(.name): \(.language)"' 2> /dev/null); then
  echo "$output"
  echo
  echo "The six most used languages by $gh_username are:"
  echo "$output" | awk '{print $NF}' | grep -v 'null' | sort | uniq -c | sort -rn | head | column -t | awk '{print $2 ": " $1 " repos"}'
else
  echo "An error occurred while processing the request."
  echo "Are you sure the username '${gh_username}' exists?"
fi
