#!/bin/bash

# Run linters with auto-fix on files

# Usage: Called by Claude Code PostToolUse hook
# Receives JSON via stdin with tool operation details

# Read JSON from stdin and extract file path
JSON=$(cat)
FILE_PATH=$(echo "$JSON" | jq -r '.tool_input.file_path')

# Run linters based on file extension
case "$FILE_PATH" in
*.py)
	# Python files - use ruff check from Mason
	if command -v ~/.local/share/nvim/mason/bin/ruff &>/dev/null; then
		~/.local/share/nvim/mason/bin/ruff check --fix "$FILE_PATH" 2>/dev/null
	fi
	;;
*.js | *.jsx | *.ts | *.tsx)
	# JavaScript/TypeScript files - use eslint from Mason
	if command -v ~/.local/share/nvim/mason/bin/eslint &>/dev/null; then
		~/.local/share/nvim/mason/bin/eslint --fix "$FILE_PATH" 2>/dev/null
	fi
	;;
*.rs)
	# Rust files - use clippy
	if command -v cargo &>/dev/null && cargo clippy --version &>/dev/null; then
		# Run clippy on the entire project (file-specific linting not supported)
		cd "$(dirname "$FILE_PATH")" && cargo clippy --fix --allow-dirty --allow-staged 2>/dev/null || true
	fi
	;;
*.go)
	# Go files - use golangci-lint from Mason
	if command -v ~/.local/share/nvim/mason/bin/golangci-lint &>/dev/null; then
		~/.local/share/nvim/mason/bin/golangci-lint run --fix "$FILE_PATH" 2>/dev/null || true
	fi
	;;
*.sh | *.bash)
	# Shell scripts - use shellcheck from Mason
	if command -v ~/.local/share/nvim/mason/bin/shellcheck &>/dev/null; then
		~/.local/share/nvim/mason/bin/shellcheck "$FILE_PATH" 2>/dev/null || true
	fi
	;;
*.yaml | *.yml)
	# YAML files - use yamllint from Mason
	if command -v ~/.local/share/nvim/mason/bin/yamllint &>/dev/null; then
		~/.local/share/nvim/mason/bin/yamllint "$FILE_PATH" 2>/dev/null || true
	fi
	;;
esac
