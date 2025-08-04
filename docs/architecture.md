# Claude Code Architecture

## Overview

Claude Code uses a simple three-tier architecture that separates knowledge (documentation), capabilities (agents), and workflows (commands).

## Three-Tier Architecture

### 1. Documentation Layer

Persistent, versioned knowledge stored as leaf nodes (no cross-references between docs).

```
docs/                        # Domain-organized reference material
├── git/                     # Version control conventions and practices
├── architecture.md          # This file

decisions/                   # Architectural Decision Records (ADRs)
├── 0001-*.md                # Historical decisions with rationale
└── ...                      # Design choices and trade-offs

templates/                   # Reusable patterns and starting points
├── agent-template.md
├── command-template.md
├── madr-template-minimal.md
├── madr-template.md
└── project-claude.md
```

**Key Characteristics:**

- Single source of truth for domain knowledge
- Versioned and tracked in git
- Referenced via @-syntax by agents and commands
- No cross-references between documents (leaf nodes)

### 2. Agent Layer

AI agents that provide specific capabilities and domain expertise.

```
agents/
├── core/                   # Essential cross-cutting agents
├── orchestrators/          # Multi-agent workflow coordination
├── specialized/            # Framework/language specific
└── universal/              # Framework-agnostic specialists
```

**Key Characteristics:**

- Main Claude Code agent orchestrates subagents
- Subagents are not interactive (single response)
- Cannot spawn other subagents
- Can reference documentation via @-syntax
- Return structured findings
- Symlinked from `~/src/awesome-claude-agents/agents/` in global setup

### 3. Command Layer

Commands are a way to trigger lightweight workflows that can orchestrate agents and reference documentation.

**Key Characteristics:**

- Orchestration recipes
- Defined inputs/outputs
- Reference documentation
- Encode user-specific patterns

## How It Works

### Directory Structure

```
~/.claude/                   # Global configuration
├── CLAUDE.md              # Auto-loaded context
├── agents/                # Agent specifications
├── commands/              # Slash commands
├── decisions/             # ADRs
├── docs/                  # Reference documentation
└── templates/             # Reusable templates

<project>/.claude/         # Project-specific
├── agents/                # Project agents
├── commands/              # Project commands
└── docs/                  # Project docs
```

### CLAUDE.md Files

- Auto-load when Claude enters a directory
- Provide immediate context
- Import other files via @-syntax (backticks to escape import)
- Project files extend global configuration

### @-Reference System

- **Example**: `@docs/testing.md` - Load documentation
- **Example**: `@templates/bug-report.md` - Load templates
- **Example**: `@decisions/0001-*.md` - Load decisions
- References work from commands, agents, and CLAUDE.md

## Best Practices

### Documentation

- Keep files focused on single topics
- No cross-references between docs
- Clear, actionable content
- Domain-based organization

### Agents

- Single domain focus
- Reference relevant docs
- Return structured output
- Follow agent template

### Commands

- Keep concise
- Focus on inputs/outputs, phases, and orchestration patterns
- Utilize reference docs and agents
- Trigger user-specific patterns

## Core Engineering Principles

- **Design**: Well-designed and appropriate for the system
- **Functionality**: Code behaves as intended and serves users well
- **Complexity**: Simplified code that other developers can understand
- **Naming**: Clear names for variables, classes, methods

## Benefits

1. **Simplicity**: Clear separation of concerns
2. **Maintainability**: Single source of truth
3. **Extensibility**: Easy to add new components
4. **Token Efficiency**: Load only what's needed

## Key Reminders

- Context persists only for current session
- Use built-in Tools (Glob, Grep, LS, Read) for initial search and exploration
- Use Bash commands (`rg`, `fd`) for advanced search capabilities
- Commands are located at `commands/<command-name>.md` and invoked with `/<command-name>`
- Prioritize understanding and consensus before implementation
- Make assumptions explicit
