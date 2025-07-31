# Memory Framework Architecture

## Overview

The memory framework provides persistent context across Claude Code sessions through a hierarchical structure:

- **Global** (`~/.claude/`): Universal tools and documentation
- **Project** (`<project>/.claude/`): Project-specific context

## Key Components

### CLAUDE.md Files

Auto-loaded when Claude enters a directory. Contains essential context and @-references to other documentation.

### @-References

- `@file.md` - Loads entire file content
- `@file.md#L123-456` - Loads specific line ranges
- References are loaded on-demand, not inline

### Directory Structure

```
~/.claude/
├── CLAUDE.md              # Entry point with @docs/README.md
├── commands/              # Slash commands
├── docs/                  # Domain-organized documentation
│   ├── README.md          # Navigation index
│   └── {domain}/          # Specific topics
└── agents/                # Sub-agent specifications

<project>/.claude/
├── CLAUDE.md              # Project context
├── commands/              # Project commands
├── docs/                  # Project documentation
└── templates/             # Project templates
```

## How It Works

1. **Entry**: CLAUDE.md files auto-load in directories
2. **Discovery**: Use `/documentation`, `/commands`, `/agents`, and `/memory-framework` to explore
3. **Navigation**: `docs/README.md` serves as the main index
4. **Loading**: Agents should read specific files based on task context

## Design Principles

- **Minimal Context**: Only CLAUDE.md loads automatically
- **Progressive Disclosure**: Start with index, navigate to details
- **Single Responsibility**: Each file serves one purpose/audience
- **Token Efficiency**: Load only what's needed for the task

