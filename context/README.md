# Context Index

Core guidelines and standards for Claude Code development.

## Available Context

### Framework & Architecture

- **Memory Framework**: `memory-framework.md` - Core architecture, organization, token management
- **Interaction Guidelines**: `interaction-guidelines.md` - How Claude should approach requests

### Git & Version Control

- **Git Commit Guidelines**: `git-commit-guidelines.md` - Commit format, atomic commits, conventions
- **PR Guidelines**: `pr-guidelines.md` - Pull request creation and review standards
- **Code Review**: `code-review.md` - Review process and expectations

### Testing & Quality

- **Testing**: `testing.md` - Testing strategies and frameworks
- **TDD**: `tdd.md` - Test-driven development practices

### Documentation

- **Documentation Philosophy**: `documentation.md` - General documentation principles
- **Documentation Strategy**: `documentation-strategy.md` - Creating and maintaining docs
- **CLAUDE.md Template**: `claude-md-template.md` - Template for project CLAUDE.md files

## Usage Patterns

1. **Task Recognition**: Read relevant context based on task type
2. **Selective Loading**: Only read what's needed for the current task
3. **Reference Path**: Use `context/[filename].md` from `~/.claude/`

## Quick Reference

- **Git operations** → `git-commit-guidelines.md`, `pr-guidelines.md`
- **Testing tasks** → `testing.md`, `tdd.md`
- **Documentation work** → `documentation-strategy.md`
- **Framework understanding** → `memory-framework.md`
- **Code reviews** → `code-review.md`
- **How to interact** → `interaction-guidelines.md`

