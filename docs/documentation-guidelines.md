# Documentation Guidelines

Comprehensive documentation philosophy, strategy, and best practices for the Claude Code Memory Framework.

## Core Philosophy

**Fundamental Principle**: Apply SOLID principles to documentation - small, focused files with single purpose and audience.

- **Clear, concise, and actionable**: Keep documentation brief and essential
- **User-focused and task-oriented**: Only document what directly impacts development
- **Maintained alongside code changes**: Update docs as you work
- **Progressive disclosure of complexity**: Layer information appropriately

## Organization Patterns

### Structure

```
docs/
├── README.md           # Navigation hub
├── {topic}.md          # Single-purpose docs
├── decisions/          # ADR records
├── templates/          # Reusable document templates
└── {component}/        # Component-specific docs alongside code
    ├── README.md       # Component overview
    └── CLAUDE.md       # Development context
```

### Document Types

- **README.md**: Navigation and overview
- **{topic}.md**: Single-purpose explanations for specific audience
- **CLAUDE.md**: Special file auto-read by Claude Code, imports `@-referenced` files
- **CHANGELOG.md**: Guide to ADRs and significant changes with brief explanations

## Content Guidelines

- **Single Responsibility**: Each document serves one purpose for one audience
- **Actionable Information**: Current with implementation, directly useful
- **Clear Navigation**: Proper cross-references between docs
- **Concise Style**: Bullet points, short sentences, minimal prose

### @-Reference Guidelines

**Important**: `@-references` in code blocks are NOT escaped - they will be imported even in examples. Always use backticks to escape `@-references` when showing examples.

**Path Options**:

1. **Full paths from project root**: `/home/user/project/docs/testing.md`
2. **Relative to current directory**: `../docs/testing.md` or `docs/testing.md`

**Proper usage examples** (escaped with backticks):

- `@docs/testing.md` - References testing documentation (relative to working directory)
- `@./memory-framework/guide.md` - Explicit relative path
- `@/full/path/to/decisions/0001-database-choice.md` - Full path reference

**Improper usage examples** (escaped with backticks):

- `@non-existent-file.md` - Ensure referenced files exist
- `@some-file` - Always include file extension
- Using `@-references` in code blocks without backticks (they will be imported!)

**When to escape**:

- Always use backticks when showing `@-reference` examples
- When documenting actual files to reference, just provide the path: docs/testing.md
- Only add the @ symbol when you want Claude to actually import the file

## When to Split Documents

Split when they:

- Serve multiple distinct audiences
- Mix different content types (e.g., philosophy + implementation + procedures)
- Violate single responsibility principle
- Become difficult to navigate or find specific information

## CLAUDE.md Strategy

### Purpose

CLAUDE.md is automatically loaded when Claude Code starts working in a directory. It provides immediate context and can import other files via `@-references`.

### Guidelines

- Focus on immediate development needs
- Essential commands and patterns only
- Use `@-references` to point to detailed documentation
- Keep it actionable and current

### Hierarchical Structure

For complex codebases, create `CLAUDE.md` files at relevant levels:

- **Top-level `CLAUDE.md`**: Overall project architecture and patterns
- **Module-level `CLAUDE.md`**: Component-specific context (e.g., `planner/CLAUDE.md`)
- **Sub-module `CLAUDE.md`**: Specialized areas when needed

Each should include:

- Purpose and scope of the directory
- Key architectural decisions
- Important files and their roles
- Dependencies and interfaces
- Testing approaches
- Common workflows

## Decision Documentation

Use Any Decision Records (ADRs) for significant decisions:

- **Complex decisions**: Use `templates/madr-template.md` (full template)
- **Simple decisions**: Use `templates/madr-template-minimal.md` (minimal template)
- **Organization**: Store in `decisions/` directory
- **Naming**: Format `NNNN-title-of-decision.md`

ADRs capture:

- Context and problem statement
- Considered options and trade-offs
- Final decision and justification
- Consequences of the decision

## Documentation Workflow

### Continuous Updates

- **Update docs as you work**: Modify when making significant changes
- **Document decisions**: Record architectural choices via ADRs
- **Keep context current**: Ensure docs reflect actual implementation

### Version Control

- **Commit documentation separately**: Dedicated commits for doc updates
- **Use descriptive messages**: Follow conventional commit format
- **Leverage git history**: Version control is your archive

## Benefits

1. **Quick Understanding**: Find relevant information fast
2. **Easy Maintenance**: Update specific areas independently
3. **Better Git History**: Isolated change tracking
4. **Scalable**: Pattern grows naturally with project
5. **Developer-Friendly**: Context-specific guidance

## Anti-patterns

**Avoid**:

- Mixed audiences in single document
- Multiple purposes per file
- Deep directory nesting
- Outdated documentation
- Arbitrary size limits

**Prefer**:

- Focused files with clear purpose
- Single audience per document
- Shallow hierarchies
- Regular updates
- Natural document boundaries

**Summary**: Treat documentation like well-architected code - focused modules with single responsibilities that compose well together.

