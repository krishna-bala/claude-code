# Context Loading Reference

This document consolidates all context currently being loaded through @-references in the Claude memory framework.

## Current @-Referenced Files

The following files are loaded via @-references in `~/.claude/CLAUDE.md`:

1. **@~/.claude/docs/README.md** - Documentation Index
2. **@~/.claude/docs/git/README.md** - Git Guidelines
3. **@~/.claude/docs/testing/README.md** - Testing Guidelines
4. **@~/.claude/docs/templates/README.md** - Templates Index

## Consolidated Context Being Loaded

### 1. Base Context (from CLAUDE.md files)

#### Global Context (~/.claude/CLAUDE.md)

- Memory Framework Architecture
- Git Conventions (branch naming: krishna.<descriptive-name>)
- Core Engineering Principles (Design, Functionality, Complexity, Naming)
- Decision Documentation (M-ADR format)
- Task-Specific Context paths (not loaded, just referenced)
- Server Operations (time mcp server)
- Key Reminders

#### Project Context (~/.dotfiles/CLAUDE.md)

- Installation Commands
- Repository Architecture (Dotbot, host vs docker configs)
- Key Components (window management, dev environment, git config)
- Submodules
- Working patterns
- Important instruction reminders

### 2. Documentation Index (@~/.claude/docs/README.md)

Provides navigation to:

- **Core Development**: Git, Testing, Documentation
- **Framework & Architecture**: Memory Framework, Automation, Project Setup
- **Resources**: Templates, Decisions
- **Quick Reference** paths to specific docs
- **Usage Patterns**: Task-based, Template-based, Decision-based, Cross-reference

### 3. Git Guidelines (@~/.claude/docs/git/README.md)

- Available guidelines paths (commit, PR, code review)
- Quick Reference:
  - Commit Standards (conventional format, atomic, clear messages)
  - Branch Naming (krishna.\* pattern)
  - Pull Request standards
- Related resources paths

### 4. Testing Guidelines (@~/.claude/docs/testing/README.md)

- Available guidelines paths (testing strategies, TDD)
- Quick Reference:
  - Testing Strategies overview
  - TDD Practices overview
- Related resources paths

### 5. Templates Index (@~/.claude/docs/templates/README.md)

- Available Templates:
  - Project Setup templates
  - Development templates
  - Decision Documentation templates (M-ADR)
  - Automation templates
  - Session Management templates
- Usage instructions
- Template Guidelines

## Summary of Loaded Context

### Always Loaded (Base Context)

1. Core engineering principles and conventions
2. Git branch naming convention
3. Project-specific architecture (for current project)
4. Navigation indexes to additional resources
5. Basic testing and git quick references
6. Available template types

### Not Automatically Loaded (Referenced Paths)

These paths are mentioned but require explicit reading:

- Detailed git guidelines (commit-guidelines.md, pr-guidelines.md, code-review.md)
- Detailed testing docs (testing.md, tdd.md)
- Documentation strategy files
- Memory framework architecture details
- Specific templates content
- Decision records
- Automation patterns

## Context Loading Strategy

Currently, the system loads:

- High-level navigation and principles
- Quick references and overviews
- Paths to detailed documentation

This creates a "hub and spoke" model where base context provides navigation to detailed docs that must be explicitly read when needed.
