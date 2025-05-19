## Git Conventions

- Always prefix branch names with `krishna.<descriptive-name>`. When context exists (like a ticket number, API name, or module name), use `krishna.<context-identifier>.<descriptive-name>`
  - Examples: 
    - `krishna.AUTO-4145.fix-login-bug` (ticket context)
    - `krishna.window-api.add-floating-support` (feature/module context)
    - `krishna.add-dark-mode` (simple feature without specific context)
- Do not add "🤖 Generated with Claude Code" or "Co-Authored-By: Claude" to commit messages

## Code Review Practices

<!-- IMPORTANT: Follow these developer guidelines when making changes, creating commits, or preparing pull requests -->
### Developer Guidelines
@agent-instructions/google-eng/review/developer/index.md
@agent-instructions/google-eng/review/developer/cl-descriptions.md
@agent-instructions/google-eng/review/developer/handling-comments.md
@agent-instructions/google-eng/review/developer/small-cls.md

### Reviewer Guidelines
@agent-instructions/google-eng/review/reviewer/index.md
@agent-instructions/google-eng/review/reviewer/looking-for.md
@agent-instructions/google-eng/review/reviewer/comments.md
@agent-instructions/google-eng/review/reviewer/standard.md
@agent-instructions/google-eng/review/reviewer/speed.md
@agent-instructions/google-eng/review/reviewer/navigate.md
@agent-instructions/google-eng/review/reviewer/pushback.md
