# Git User Conventions

## Branch Naming

Always prefix branch names with `krishna.<descriptive-name>`.
When context exists (like a ticket number, API name, or module name),
use `krishna.<context-identifier>.<descriptive-name>`

Examples:

- `krishna.AUTO-4145.fix-login-bug` (ticket context)
- `krishna.window-api.add-floating-support` (feature/module context)
- `krishna.add-dark-mode` (simple feature without specific context)

## Commit Messages

- Use the user-level `~/.gitmessage` template
- Do not add "🤖 Generated with Claude Code" or "Co-Authored-By: Claude" to commit messages
