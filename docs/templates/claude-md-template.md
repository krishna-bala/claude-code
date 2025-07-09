# CLAUDE.md Template

Optimized template for creating efficient CLAUDE.md files in any project.

## Structure (Copy and Customize)

```markdown
# CLAUDE.md

## Essential Commands

- `build_command`: Brief description
- `test_command`: Brief description
- `lint_command`: Brief description

## Key Patterns

- **Architecture**: Brief architectural note
- **Testing**: Core testing approach
- **Dependencies**: Key external dependencies

## Development Workflow

- Essential workflow steps only
- Reference detailed docs via @-imports

## Detailed Documentation

- **Comprehensive Guides**: @docs-archive/detailed-guide.md
- **Architecture Decisions**: @docs-archive/architecture.md
- **Advanced Patterns**: @docs-archive/advanced-patterns.md

## Component-Specific Context

Load component-specific CLAUDE.md files when working in subdirectories.
```

## Token Budget Targets

- **This file**: <500 tokens
- **Supporting files**: <200 tokens each
- **Total baseline**: <5K tokens
- **Archive**: Unlimited (lazy-loaded)

## Usage Pattern

1. **Start Minimal**: Copy template, add only essential commands
2. **Add Essentials**: Include critical patterns and workflows
3. **Archive Details**: Move comprehensive docs to archive directories
4. **Use References**: Link to archived content via @-imports
5. **Optimize Regularly**: Monitor token usage and refine

## Anti-patterns to Avoid

- Large inline code examples (move to archive)
- Verbose explanations (condense to principles)
- Multiple audiences in one file (split by purpose)
- Deep nesting (flatten with clear references)

This template ensures consistent, efficient context across all projects.
