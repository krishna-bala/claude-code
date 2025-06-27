# Project Setup Guide

Initialize and configure .claude/ directories for projects.

## When to Use

- Starting work on a new project
- Adding Claude Code support to existing project
- Standardizing development workflows
- Documenting project-specific patterns

## Quick Setup Process

### 1. Initialize Structure
```bash
# Run from project root
/init-project

# Or manually create:
mkdir -p .claude/{specs,guides,templates}
```

### 2. Create Project CLAUDE.md
Use @templates/project-claude-md.md as starting point:
- Essential commands (build, test, lint)
- Key architectural patterns
- Technology stack references
- Links to detailed docs

### 3. Add Relevant Specs
Based on project technologies:
- `specs/README.md` - Spec index
- Language standards (python, javascript, etc.)
- Tool configurations (docker, ci/cd)
- API conventions

### 4. Document Architecture
Create guides for:
- `guides/architecture.md` - System design
- `guides/development.md` - Dev workflow
- `guides/deployment.md` - Release process

## Directory Organization

```
project/
└── .claude/
    ├── CLAUDE.md           # Project context (<200 lines)
    ├── specs/              # Standards and requirements
    │   ├── README.md       # Spec navigation
    │   ├── api-spec.md     # API conventions
    │   └── testing-spec.md # Testing standards
    ├── guides/             # Project workflows
    │   ├── README.md       # Guide index
    │   └── onboarding.md   # New developer guide
    └── templates/          # Project templates
        └── component.md    # Component template
```

## Best Practices

### Content Guidelines
- Keep CLAUDE.md under 200 lines
- One concept per spec file
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
└── packages/
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
- `/check-standards` - Validate against specs
- `/list-specs` - Show available specs

## Related Resources

- @templates/project-claude-md.md - CLAUDE.md template
- @guides/context-loading-patterns.md - Organize specs
- @context/documentation.md - Doc philosophy