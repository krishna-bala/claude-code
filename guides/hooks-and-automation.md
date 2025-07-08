# Claude Code Hooks and Automation

Automate workflows and enforce standards using Claude Code's hook system.

## When to Use

- Enforce formatting standards on file edits
- Trigger build/test processes after changes
- Log operations for audit trails
- Integrate with external tools
- Maintain code quality automatically

## Hook System Overview

Claude Code supports hooks at two levels:

- **Global**: `~/.claude/settings.json` - Apply to all projects
- **Project**: `<project>/.claude/settings.json` - Project-specific hooks

### Important: Hooks are Additive

When both global and project hooks match the same operation, BOTH execute. This enables composability but requires coordination to avoid conflicts.

### Available Hook Points

- `PostToolUse`: Triggers after tool operations (Edit, MultiEdit, Write)

## Configuration Structure

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Edit|MultiEdit|Write",
        "hooks": [
          {
            "type": "command",
            "command": "~/.claude/hooks/format.sh"
          }
        ]
      }
    ]
  }
}
```

## Matcher Patterns

Currently, matchers match against tool names:

- `"Write"` - Matches all Write operations
- `"Edit"` - Matches all Edit operations
- `"MultiEdit"` - Matches all MultiEdit operations
- `"Write|Edit"` - Matches Write OR Edit operations

Note: File extension matching in matchers (e.g., `"Write(*.md)"`) is not currently supported. Filter by file type within your hook script instead.

## Hook Execution Details

1. **Shell**: Hooks run in `/bin/sh`, not bash
2. **Working Directory**: Executes from current project directory
3. **Input**: Receives JSON via stdin with operation details
4. **Synchronous**: Hooks run synchronously, keep them fast

### JSON Input Structure

```json
{
  "session_id": "...",
  "tool_name": "Edit",
  "tool_input": {
    "file_path": "/path/to/file.md",
    "old_string": "...",
    "new_string": "..."
  },
  "tool_response": {
    "filePath": "...",
    "originalFile": "full file content",
    "structuredPatch": [...]
  }
}
```

## Common Patterns

### Auto-Formatting Script

```bash
#!/bin/bash
# ~/.claude/hooks/format.sh

# Parse file path from JSON input
JSON=$(cat)
FILE_PATH=$(echo "$JSON" | jq -r '.tool_input.file_path')

# Format based on file extension (using Mason-managed formatters)
case "$FILE_PATH" in
  *.md)
    ~/.local/share/nvim/mason/bin/prettier --write --parser markdown "$FILE_PATH" 2>/dev/null
    ;;
  *.py)
    ~/.local/share/nvim/mason/bin/ruff format "$FILE_PATH" 2>/dev/null
    ;;
  *.js|*.ts|*.jsx|*.tsx)
    ~/.local/share/nvim/mason/bin/prettier --write "$FILE_PATH" 2>/dev/null
    ;;
esac
```

### Linting Script

```bash
#!/bin/bash
# ~/.claude/hooks/lint.sh

# Parse file path from JSON input
JSON=$(cat)
FILE_PATH=$(echo "$JSON" | jq -r '.tool_input.file_path')

# Run linters with auto-fix (using Mason-managed linters)
case "$FILE_PATH" in
  *.py)
    ~/.local/share/nvim/mason/bin/ruff check --fix "$FILE_PATH" 2>/dev/null
    ;;
  *.js|*.ts|*.jsx|*.tsx)
    ~/.local/share/nvim/mason/bin/eslint --fix "$FILE_PATH" 2>/dev/null
    ;;
esac
```

### Operation Logging

```bash
#!/bin/bash
# ~/.claude/hooks/log-operations.sh

# Log all operations with timestamp
{
  echo "=== $(date) ==="
  cat | jq -r '"Operation: \(.tool_name) on \(.tool_input.file_path)"'
  echo ""
} >> ~/claude-operations.log
```

### Git Auto-Stage

```bash
#!/bin/bash
# ~/.claude/hooks/git-autostage.sh

FILE_PATH=$(cat | jq -r '.tool_input.file_path')
git add "$FILE_PATH" 2>/dev/null || true
```

## Best Practices

1. **Use Absolute Paths**: Always use absolute paths in commands

   ```json
   "command": "~/.claude/hooks/format.sh"  // Good
   "command": "./hooks/format.sh"          // Bad - relative path
   ```

2. **Handle Errors Gracefully**: Use `|| true` to prevent failures

   ```bash
   prettier --write "$FILE_PATH" || true
   ```

3. **Keep Scripts Fast**: Hooks run synchronously

   - Avoid network calls
   - Minimize file I/O
   - Use background jobs for slow operations

4. **Bash vs Sh**: For bash features, create a wrapper script

   ```bash
   #!/bin/bash
   # Wrapper for bash-specific syntax
   ```

5. **Debug with Logging**: Capture stdin for debugging
   ```bash
   tee ~/debug.log | jq -r '.tool_input.file_path'
   ```

## Troubleshooting

### Hook Not Triggering

- Check matcher syntax matches tool name exactly
- Verify hook script has execute permissions: `chmod +x script.sh`
- Test script manually with sample JSON input

### Shell Compatibility Issues

- Error: "Syntax error: '(' unexpected" → Using bash syntax in sh
- Solution: Use bash shebang or rewrite for sh compatibility

### Path Issues

- Hooks execute from current directory, not script location
- Always use absolute paths in hook commands

### JSON Parsing

- Install `jq` for reliable JSON parsing
- Test with: `echo '{"tool_input":{"file_path":"test"}}' | your-script.sh`

## Advanced Patterns

### Conditional Execution

```bash
#!/bin/bash
# Only format if file was actually modified
JSON=$(cat)
FILE_PATH=$(echo "$JSON" | jq -r '.tool_input.file_path')
TOOL_NAME=$(echo "$JSON" | jq -r '.tool_name')

if [ "$TOOL_NAME" != "Write" ] && [ -f "$FILE_PATH" ]; then
  prettier --write "$FILE_PATH" || true
fi
```

### Multiple Actions

```bash
#!/bin/bash
# Run multiple tools in sequence
JSON=$(cat)
FILE_PATH=$(echo "$JSON" | jq -r '.tool_input.file_path')

# Format
prettier --write "$FILE_PATH" 2>/dev/null || true

# Lint
eslint --fix "$FILE_PATH" 2>/dev/null || true

# Stage
git add "$FILE_PATH" 2>/dev/null || true
```

## Related

- `context/hooks-automation.md` - Quick reference for hooks
- `templates/project-hooks-template.json` - Hook configuration template
- `commands/setup-hooks.md` - Interactive hook setup
