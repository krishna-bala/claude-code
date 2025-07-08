#!/bin/bash

# Format files with appropriate formatters

# Usage: Called by Claude Code PostToolUse hook
# Receives JSON via stdin with tool operation details

# Read JSON from stdin and extract file path
JSON=$(cat)
FILE_PATH=$(echo "$JSON" | jq -r '.tool_input.file_path')

# Format based on file extension
case "$FILE_PATH" in
*.md)
	# Markdown files - use prettier from Mason
	if command -v ~/.local/share/nvim/mason/bin/prettier &>/dev/null; then
		~/.local/share/nvim/mason/bin/prettier --write --parser markdown "$FILE_PATH" 2>/dev/null
	fi
	;;
*.js | *.jsx | *.ts | *.tsx | *.json)
	# JavaScript/TypeScript files - use prettier from Mason
	if command -v ~/.local/share/nvim/mason/bin/prettier &>/dev/null; then
		~/.local/share/nvim/mason/bin/prettier --write "$FILE_PATH" 2>/dev/null
	fi
	;;
*.py)
	# Python files - use ruff from Mason
	if command -v ~/.local/share/nvim/mason/bin/ruff &>/dev/null; then
		~/.local/share/nvim/mason/bin/ruff format "$FILE_PATH" 2>/dev/null
	fi
	;;
*.rs)
	# Rust files - use rustfmt from Mason
	if command -v ~/.local/share/nvim/mason/bin/rustfmt &>/dev/null; then
		~/.local/share/nvim/mason/bin/rustfmt "$FILE_PATH" 2>/dev/null
	fi
	;;
*.go)
	# Go files - use gofmt from Mason
	if command -v ~/.local/share/nvim/mason/bin/gofmt &>/dev/null; then
		~/.local/share/nvim/mason/bin/gofmt -w "$FILE_PATH" 2>/dev/null
	fi
	;;
*.c | *.cpp | *.cc | *.h | *.hpp)
	# C/C++ files - use clang-format from Mason
	if command -v ~/.local/share/nvim/mason/bin/clang-format &>/dev/null; then
		~/.local/share/nvim/mason/bin/clang-format -i "$FILE_PATH" 2>/dev/null
	fi
	;;
*.yaml | *.yml)
	# YAML files - use prettier from Mason
	if command -v ~/.local/share/nvim/mason/bin/prettier &>/dev/null; then
		~/.local/share/nvim/mason/bin/prettier --write "$FILE_PATH" 2>/dev/null
	fi
	;;
*.sh | *.bash)
	# Shell scripts - use shfmt from Mason
	if command -v ~/.local/share/nvim/mason/bin/shfmt &>/dev/null; then
		~/.local/share/nvim/mason/bin/shfmt -w "$FILE_PATH" 2>/dev/null
	fi
	;;
esac

# Apply universal fixes that are safe for all file types
# These are inspired by pre-commit-hooks but kept minimal and safe

# Fix end-of-file newline (only for text files)
if file "$FILE_PATH" 2>/dev/null | grep -q "text"; then
	# Add newline at end of file if missing
	if [ -s "$FILE_PATH" ] && [ "$(tail -c 1 "$FILE_PATH" | wc -l)" -eq 0 ]; then
		echo >>"$FILE_PATH"
	fi

	# Remove trailing whitespace (safe for most files)
	case "$FILE_PATH" in
	*.patch | *.diff)
		# Skip patch files where whitespace might be significant
		;;
	*)
		# Remove trailing whitespace
		sed -i 's/[ \t]*$//' "$FILE_PATH" 2>/dev/null || true
		;;
	esac
fi
