# Memory Framework Guide

How to effectively use the Claude Code Memory Framework for persistent, organized development context.

## Framework Overview

The memory framework provides:
- **Persistent Context**: Specs and guides that persist across sessions
- **Smart Loading**: Context-aware loading based on your work
- **Clear Organization**: Separation of global tools and project knowledge
- **Token Efficiency**: Optimized for Claude's context window

## Quick Start

### 1. Understand the Structure
```
~/.claude/                  # Global (this directory)
├── commands/              # Slash commands
├── context/              # Development guidelines
├── guides/               # Universal workflows
└── templates/            # Reusable templates

project/.claude/           # Project-specific
├── CLAUDE.md             # Project context
├── specs/               # Standards & requirements
└── guides/              # Project workflows
```

### 2. Common Workflows

#### Starting a New Project
```bash
cd my-project
/init-project              # Creates .claude/ structure
# Edit .claude/CLAUDE.md with project essentials
```

#### Working with Existing Project
```bash
/load-context              # Loads relevant specs
/list-specs               # Shows available specs
/check-standards          # Validates against specs
```

#### Adding New Standards
1. Create spec file in `project/.claude/specs/`
2. Use @templates/spec-template.md
3. Add to specs/README.md index
4. Reference in CLAUDE.md

## Effective Usage Patterns

### Context Loading Strategy
1. **Automatic**: Based on file types
2. **Manual**: Load specific specs with @-references
3. **Conditional**: Based on task or problem

### Writing Good Specs
- **Quick Reference**: 3-5 key points upfront
- **Examples**: Show good and bad patterns
- **Triggers**: When to load this spec
- **Size**: 50-200 lines per file

### Organizing Projects
```
# Simple project
.claude/
├── CLAUDE.md
└── specs/
    └── coding-standards.md

# Complex project
.claude/
├── CLAUDE.md
├── specs/
│   ├── frontend/
│   └── backend/
└── guides/
    └── architecture.md
```

## Best Practices

### 1. Keep Context Fresh
- Update specs with codebase
- Archive outdated content
- Review quarterly

### 2. Optimize Token Usage
- CLAUDE.md < 200 lines
- Reference detailed docs
- Use progressive loading

### 3. Maintain Consistency
- Follow templates
- Use standard structure
- Cross-reference clearly

### 4. Version Control
- Commit .claude/ directory
- Track changes with git
- Document decisions

## Common Use Cases

### Code Review
```bash
/check-standards           # Validate against specs
# Reviews current changes against:
# - Language standards
# - Project conventions
# - Architecture patterns
```

### Debugging Session
```bash
/load-context debugging    # Loads debug guides
# Provides:
# - Debugging workflows
# - Language-specific tools
# - Common issue patterns
```

### New Feature Development
1. Review architecture guides
2. Check relevant specs
3. Follow project patterns
4. Update docs as needed

## Troubleshooting

### Specs Not Loading
- Check .claude/ exists in project
- Verify file paths correct
- Ensure proper @-references

### Too Much Context
- Split large specs
- Use progressive loading
- Archive verbose content

### Outdated Information
- Regular review cycle
- Update with code changes
- Remove obsolete specs

## Advanced Features

### Cross-Project Specs
Reference shared standards:
```markdown
# In project CLAUDE.md
@~/.claude/guides/debugging-workflows.md
@../shared-specs/api-standards.md
```

### Dynamic Loading
Commands can intelligently load based on:
- Current git changes
- Error patterns
- File modifications
- User queries

## Related Resources

- @context/memory-framework.md - Technical details
- @guides/project-setup.md - Project initialization
- @guides/context-loading-patterns.md - Loading strategies
- @templates/README.md - Available templates