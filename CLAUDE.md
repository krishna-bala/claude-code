# CLAUDE.md

## Memory Framework Architecture

This environment uses organized specs, guides, and templates for consistent development across projects.

- **Global (`~/.claude/`)**: Universal tools, commands, and workflows
- **Project (`<project>/.claude/`)**: Language specs, architecture, and project patterns

## Git Conventions

Always prefix branch names with `krishna.<descriptive-name>`. When context exists (like a ticket number, API name, or module name), use `krishna.<context-identifier>.<descriptive-name>`

Examples:

- `krishna.AUTO-4145.fix-login-bug` (ticket context)
- `krishna.window-api.add-floating-support` (feature/module context)
- `krishna.add-dark-mode` (simple feature without specific context)

### Git Commit Messages

- Use the user-level `~/.gitmessage` template
- Do not add "🤖 Generated with Claude Code" or "Co-Authored-By: Claude" to commit messages

## Core Engineering Principles

- **Design**: Well-designed and appropriate for the system
- **Functionality**: Code behaves as intended and serves users well
- **Complexity**: Simplified code that other developers can understand
- **Naming**: Clear names for variables, classes, methods

## Decision Documentation

For significant decisions, create Any Decision Records (ADRs) using M-ADR format:

- **Complex decisions**: Use `~/.claude/docs/templates/madr-template.md` (full template)
- **Simple decisions**: Use `~/.claude/docs/templates/madr-template-minimal.md` (minimal template)
- Document context, considered options, and rationale

## Discovery & Navigation

Use these commands to explore available resources:

- `/documentation` - Browse and get suggestions for relevant documentation
- `/commands` - List available commands and get contextual suggestions

These discovery commands help you find exactly what you need without loading everything upfront.

## Available Resources

- **Documentation**: @docs/README.md - All persistent documentation with task-specific context organized by domain

## Server Operations

- Use the time mcp server, e.g. `mcp__time__get_current_time`, for generating timestamps

## Key Reminders

- Context persists only for current session
- Read specific files with their path when relevant to the task
- Commands are located at `commands/<command-name>.md` directory and can be invoked with `/<command-name>`
- Use discovery commands (`/documentation`, `/commands`) to explore available resources
- Prioritize understanding over implementation
- Make assumptions explicit
