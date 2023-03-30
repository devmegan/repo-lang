# [Repo Lang](https://github.com/devmegan/repo-lang)

A bash script to fetch and analyse the most used programming languages for a given github account.

It fetches the data from GitHub using [GitHub's REST api](https://docs.github.com/rest).

## Usage

To run the script use:

`$ ./repo-lang.sh <github_username:str>`

e.g.:

`$ ./repo-lang.sh devmegan`

## Requirements

This script uses [`jq`](https://stedolan.github.io/jq/) to process the json returned from the GitHub api request, and extract repository names and languages from it.
