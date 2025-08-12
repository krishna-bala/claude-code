#!/bin/bash

# Parse input JSON from Claude
input=$(cat)
current_dir=$(echo "$input" | jq -r '.workspace.current_dir')

# Get user and host info
username=$(whoami)
hostname_short=$(hostname -s)

# Get git information if in a git repository
git_info=""
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
	branch=$(git branch --show-current 2>/dev/null || echo "HEAD")

	# Check for uncommitted changes
	if ! git diff --quiet 2>/dev/null || ! git diff --cached --quiet 2>/dev/null; then
		git_status="*"
	else
		git_status=""
	fi

	git_info=" $branch$git_status"
fi

# Output formatted status line
printf "\033[1;32m%s@%s\033[0m \033[1;34m%s\033[0m%s" \
	"$username" \
	"$hostname_short" \
	"$current_dir" \
	"$git_info"
