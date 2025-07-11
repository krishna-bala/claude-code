# Project CLAUDE.md Template

Template for creating project-specific `CLAUDE.md` files. Copy and customize for your project.

<template>

# CLAUDE.md

Project context for [PROJECT NAME]. This file helps Claude Code understand project-specific patterns and workflows.

## Essential Commands

- `[BUILD_COMMAND]`: Build the project
- `[TEST_COMMAND]`: Run tests
- `[LINT_COMMAND]`: Run linting/formatting
- `[DEV_COMMAND]`: Start development server

## Project Overview

**Purpose**: [Brief description of what this project does]
**Tech Stack**: [Primary languages and frameworks]
**Architecture**: [High-level architecture pattern]

## Key Patterns

### Code Organization

- [Pattern 1]: [Brief description]
- [Pattern 2]: [Brief description]

### Testing Strategy

- Unit tests: [Test framework and location]
- Integration tests: [Approach and tools]
- E2E tests: [If applicable]

### Development Workflow

1. [Step 1]
2. [Step 2]
3. [Step 3]

## Project Structure

```
[PROJECT_ROOT]/
├── src/ # [Description]
├── tests/ # [Description]
├── docs/ # [Description]
└── ...
```

## Active Specs

Load these based on what you're working on:

- **General**: `.claude/specs/coding-standards.md`
- **[LANGUAGE]**: `.claude/specs/[LANGUAGE]-standards.md`
- **API**: `.claude/specs/api-design.md` (if applicable)
- **Testing**: `.claude/specs/testing-strategy.md`

## Detailed Documentation

- **Architecture**: `docs/architecture.md`
- **API Reference**: `docs/api/README.md`
- **Deployment**: `docs/deployment.md`

## Quick Reference

### Common Tasks

- **Add new feature**: [Brief steps or link to guide]
- **Debug issue**: [Debugging approach]
- **Deploy**: [Deployment process]

### Important Notes

- [Any special considerations]
- [Environment-specific details]
- [Known gotchas]

</template>

## Customization Guide

1. Replace all `[PLACEHOLDERS]` with actual values
2. Remove sections that don't apply
3. Keep under 200 lines total
4. Focus on what's essential for development
5. Link to detailed docs instead of inline explanations

## Size Guidelines

- Essential commands: 3-10 lines
- Project overview: 5-15 lines
- Key patterns: 10-30 lines
- Structure diagram: 10-20 lines
- References: 10-20 lines
