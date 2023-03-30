# [Repo Lang](https://github.com/devmegan/repo-lang)

<img src="readme/repo-lang-demo.gif" alt="screen recording of script being run and returning repository language information" />

A bash script to fetch and analyse the most used programming languages for a given github account.

It fetches the data from GitHub using [GitHub's REST api](https://docs.github.com/rest). First, the script outputs a list of all the user's repositories and the main language for each one, and then analyses the output to provide a list of the user's six most used languages. It filters out any repositories where the language is `null`.

## Usage

To run the script use:

`$ ./repo-lang.sh <github_username:str>`

e.g.:

`$ ./repo-lang.sh devmegan`

To get help running the script use either:

`$ ./repo-lang -h` or `$ ./repo-lang --help`

## Error handling

The script handles all errors, including an invalid GitHub username, by returning an error message asking the user to check the username.

At the moment this is how it handles all errors, including rate limiting, network and jq errors.

## Requirements

This script uses [`jq`](https://stedolan.github.io/jq/) to process the json returned from the GitHub api request, and extract repository names and languages from it.
