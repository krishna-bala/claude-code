# Project Setup Guide

Initialize and configure `<project>/.claude/` directories for projects.

## When to Use

- Starting work on a new project
- Adding Claude Code support to existing project
- Standardizing development workflows
- Documenting project-specific patterns

## Quick Setup Process

### 1. Initialize Structure

```
/init-project
```

### 2. Create Project CLAUDE.md

Use `~/.claude/docs/templates/project-claude.md` as starting point:

- Essential commands (build, test, lint)
- Key architectural patterns
- Technology stack references
- Links to detailed docs

### 3. Suggest & Configure Hooks (Optional)

Suggest and set up automation hooks for the project:

Common hooks:

- Auto-formatting on save
- Linting with auto-fix
- Git auto-staging
- Operation logging

### 5. Document Architecture

Create guides for:

Architecture & System design
Development workflow
Release process
Testing

## Directory Organization

```
project/
└── .claude/
    ├── CLAUDE.md           # Project context
    ├── settings.json       # Hook configuration (optional)
    ├── docs/               # Standards and requirements
    │   ├── README.md       # Docs navigation
    │   ├── api-spec.md     # API conventions
    │   └── testing.md # Testing standards
    ├── guides/             # Project workflows
    │   ├── README.md       # Guide index
    │   └── onboarding.md   # New developer guide
    └── templates/          # Project templates
        └── component.md    # Component template
```

## Best Practices

### Content Guidelines

- Action-oriented guides
- Version control everything

### Maintenance

- Update docs with code changes
- Review quarterly for relevance
- Archive outdated content
- Track with git history

### Integration

- Reference global guides when applicable
- Extend rather than duplicate
- Link between related docs
- Use consistent formatting

## Common Patterns

### Monorepo Projects

```
.claude/
├── CLAUDE.md              # Root context
└── docs/
    ├── frontend/
    │   └── CLAUDE.md      # Frontend specific
    └── backend/
        └── CLAUDE.md      # Backend specific
```

### Multi-Language Projects

- Separate specs by language
- Common guides for workflows
- Shared templates for consistency

## Tools and Commands

- `/init-project` - Automated setup

## Related Resources

- @templates/project-claude.md - CLAUDE.md template
