# Hooks and Automation Context

Claude Code's hook system enables automatic workflow integration.

## Quick Reference

- Configure in `settings.json` at global (`~/.claude/`) or project (`.claude/`) level
- PostToolUse hooks trigger after Edit, MultiEdit, Write operations
- Hooks are **additive** - both global and project hooks execute
- Commands receive JSON input via stdin with operation details
- Hooks run in `/bin/sh` with current directory as working directory

## Hook Configuration

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

## Key Patterns

1. **Formatting**: Auto-format on save with prettier/black/rustfmt
2. **Validation**: Run linters/type-checkers after edits
3. **Building**: Trigger incremental builds on changes
4. **Testing**: Run related tests after code changes
5. **Logging**: Track operations for debugging
6. **Git Integration**: Auto-stage changed files

## When Claude Should Suggest Hooks

- User mentions repetitive tasks after edits
- Project has formatting/linting tools configured
- Need for operation logging or auditing
- Integration with CI/CD workflows
- Maintaining code quality standards

## Hook Script Template

```bash
#!/bin/bash
# Parse JSON input
JSON=$(cat)
FILE_PATH=$(echo "$JSON" | jq -r '.tool_input.file_path')

# Perform action based on file type
case "$FILE_PATH" in
  *.py) ruff format "$FILE_PATH" || true ;;
  *.js) prettier --write "$FILE_PATH" || true ;;
esac
```

## Important Considerations

- **Absolute Paths**: Always use full paths in commands
- **Error Handling**: Use `|| true` to prevent cascade failures
- **Performance**: Keep hooks fast, avoid blocking operations
- **Shell Compatibility**: Scripts run in sh, not bash
- **Debugging**: Log JSON input when troubleshooting

## Limitations

- No conditional logic in matchers (handle in script)
- Cannot modify Claude's behavior, only trigger commands
- Synchronous execution only
- Limited to PostToolUse hook point currently

## Related Resources

- Full guide: `guides/hooks-and-automation.md`
- Template: `templates/project-hooks-template.json`
- Setup command: `/setup-hooks`
