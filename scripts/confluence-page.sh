#!/bin/bash

# Get Confluence page content by ID or URL
# Usage: confluence-page.sh 201326593
# Usage: confluence-page.sh https://foxbots.atlassian.net/wiki/spaces/AUTO/pages/201326593/Planning+Architecture

if [ $# -eq 0 ]; then
	echo "Usage: $0 <PAGE-ID or URL>"
	echo "Example: $0 201326593"
	echo "Example: $0 https://foxbots.atlassian.net/wiki/spaces/AUTO/pages/201326593/Planning+Architecture"
	exit 1
fi

INPUT=$1
API_KEY=$(pass show api-keys/ATLASSIAN_API_KEY)

# Extract page ID from URL if provided
if [[ $INPUT =~ ^https?://.*/pages/([0-9]+)/ ]]; then
	PAGE_ID="${BASH_REMATCH[1]}"
else
	PAGE_ID=$INPUT
fi

# Fetch the page content with expanded body.storage
curl -s -u krishna@foxbots.com:$API_KEY \
	-H "Content-Type: application/json" \
	"https://foxbots.atlassian.net/wiki/rest/api/content/$PAGE_ID?expand=body.storage,version,ancestors" |
	jq -r '.body.storage.value'
