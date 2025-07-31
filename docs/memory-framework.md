# Memory Framework

Claude Code Memory Framework architecture, usage patterns, and interaction guidelines.

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

### Agent System

The `agents/` directory contains 50+ specialized sub-agent specifications that provide focused expertise:

- **Purpose**: Agents are invoked through commands for specialized workflows
- **Structure**: Each agent file defines triggers, immediate actions, and decision trees
- **Usage**: Commands can delegate to agents using the Task tool
- **Examples**:
  - `memory-framework.md` - Maintains documentation consistency
  - `code-reviewer.md` - Performs systematic code reviews
  - `test-engineer.md` - Handles testing workflows
  - `architect-review.md` - Reviews architectural decisions

## How It Works

1. **Entry**: CLAUDE.md files auto-load in directories
2. **Discovery**: The user may call `/documentation`, `/commands`, `/agents`, and `/memory-framework` to explore. An agent cannot use these commands - they should instead interpret these instructions as reading either the user-level or project-level `commands/<command-name>.md` file.
3. **Navigation**: `docs/README.md` serves as the main index
4. **Loading**: Agents should read specific files based on task context

## Design Principles

- **Minimal Context**: Only CLAUDE.md loads automatically
- **Progressive Disclosure**: Start with index, navigate to details
- **Single Responsibility**: Each file serves one purpose/audience
- **Token Efficiency**: Load only what's needed for the task

## Architecture

### Hierarchical Organization

The framework follows a clear hierarchy:

1. **Global Framework** (`~/.claude/`): Universal patterns and tools
2. **Project Framework** (`<project>/.claude/`): Project-specific overrides

Project configurations extend and override global settings while maintaining compatibility.

### Context Catalog Pattern

The framework implements a catalog/index pattern for efficient context management:

- **Index Files**: `README.md` files provide navigation and discovery
- **Domain Organization**: Documentation grouped by functional area
- **Progressive Loading**: Start with indexes, load details as needed

### Token Efficiency and Optimization

The framework is designed to minimize token usage:

- **Selective Loading**: Only CLAUDE.md loads automatically
- **@-Reference Loading**: Content loaded on-demand
- **Line Range Support**: Load specific sections with `#L123-456`
- **Discovery Commands**: Find relevant content without loading everything

### Agent Exploration Patterns

Agents follow consistent patterns for exploring and using the framework:

1. **Discovery Phase**: Use commands to understand available resources
2. **Targeted Reading**: Load only relevant documentation
3. **Task-Specific Context**: Match documentation to current task
4. **Progressive Refinement**: Start broad, narrow as needed

## Usage Patterns

### Starting New Projects

Use `/init-project` to set up project-specific framework:

```bash
/init-project
```

This creates:

- Project-level `.claude/` directory
- Customized CLAUDE.md with project context
- Language-specific templates and guidelines

### Discovery Commands

Essential commands for framework exploration:

- `/documentation` - Browse and get suggestions for relevant documentation
- `/commands` - List available commands and get contextual suggestions
- `/agents` - Explore available sub-agents
- `/memory-framework` - Check framework health and get maintenance suggestions

### @-Reference Syntax

References in CLAUDE.md and documentation:

```markdown
# Basic reference

@docs/testing.md

# Line range reference

@docs/git/commit-guidelines.md#L10-50

# Relative reference (from within docs/)

@./templates/bug-report.md
```

### Context Triggers

The framework recognizes context automatically:

- **Directory Entry**: CLAUDE.md loads when entering a directory
- **File Operations**: Framework suggests relevant documentation
- **Command Usage**: Commands load their own context
- **Task Recognition**: Agents activate based on task patterns

### Progressive Disclosure Strategies

1. **Start Minimal**: Only essential context in CLAUDE.md
2. **Index Navigation**: Use README.md files for discovery
3. **Targeted Loading**: Read specific files for tasks
4. **Contextual Expansion**: Load more as complexity increases

## Best Practices

### For Framework Users

1. **Use Discovery Commands**: Start with `/documentation` and `/commands`
2. **Follow References**: Navigate through @-references
3. **Read Indexes First**: Start with README.md files
4. **Load Progressively**: Don't load everything at once

### For Framework Maintainers

1. **Single Responsibility**: Each file serves one purpose
2. **Clear Navigation**: Maintain accurate indexes
3. **Valid References**: Test all @-references
4. **Consistent Structure**: Follow established patterns

### For Project Setup

1. **Extend Don't Replace**: Build on global framework
2. **Document Overrides**: Explain project-specific changes
3. **Maintain Compatibility**: Ensure global commands work
4. **Keep It Focused**: Only include project-specific content

## Common Patterns

### Task-Based Loading

```markdown
# In CLAUDE.md

For testing tasks: @docs/testing.md
For git operations: @docs/git/README.md
For architecture decisions: @docs/decisions/
```

### Command Delegation

```markdown
# In commands/review.md

For code review: Use the Task tool with @agents/code-reviewer.md
```

### Progressive Context

```markdown
# Start with index

@docs/README.md

# Then specific domain

@docs/git/README.md

# Finally specific guide

@docs/git/pr-guidelines.md
```

## Troubleshooting

### Common Issues

1. **Broken References**: Use `/memory-framework` to check
2. **Missing Documentation**: Check indexes for correct paths
3. **Circular Dependencies**: Avoid files referencing each other
4. **Token Overflow**: Use line ranges to load less content

### Maintenance Commands

- `/memory-framework` - Check framework health
- `/documentation` - Verify documentation structure
- `/commands` - Validate command availability

## Related Resources

- **Templates**: `templates/` - Memory framework templates
- **Project Setup**: `project-setup/` - Framework initialization
- **Decisions**: `decisions/` - Framework architecture decisions
- **Documentation Guidelines**: `documentation-guidelines.md` - Writing effective documentation

