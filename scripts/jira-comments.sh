#!/bin/bash

# Get Jira comments for a given issue
# Usage: jira-comments.sh ESI-495

if [ $# -eq 0 ]; then
	echo "Usage: $0 <ISSUE-KEY>"
	echo "Example: $0 ESI-495"
	exit 1
fi

ISSUE_KEY=$1
API_KEY=$(pass show api-keys/ATLASSIAN_API_KEY)

curl -s -u krishna@foxbots.com:$API_KEY \
	-H "Content-Type: application/json" \
	"https://foxbots.atlassian.net/rest/api/2/issue/$ISSUE_KEY/comment" |
	jq -r '.comments[] | "[\(.author.displayName)] \(.created | split("T")[0]):\n\(.body)\n"'
