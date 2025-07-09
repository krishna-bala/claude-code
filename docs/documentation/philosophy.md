# Documentation Philosophy

**Core Principle**: Many small, focused files over monolithic documents.

## Organization Patterns

**Structure**:

```
docs/
├── README.md     # Navigation hub
├── {topic}.md    # Single-purpose docs (50-200 lines)
└── archive/      # Historical content

{component}/docs/ # Component-specific
├── README.md     # Overview
├── api-reference/# Technical specs
└── guides/       # How-to instructions
```

**Document Types**:

- README.md: Navigation and overview
- {topic}.md: Single-purpose explanations
- CLAUDE.md: Development context
- CHANGELOG.md: Progress tracking

## Content Guidelines

**Structure**: 50-200 lines per file, single audience/purpose
**Content**: Actionable information, current with implementation
**Navigation**: Clear cross-references between docs

## When to Split

Split documents when they:

- Exceed ~200 lines
- Serve multiple audiences
- Mix content types (vision + implementation + procedures)
- Become hard to navigate

## CLAUDE.md Guidelines

- Under 200 lines
- Essential commands only
- Point to detailed docs via @-references
- Focus on immediate development needs

## Benefits

1. **Quick Understanding**: Find relevant info fast
2. **Easy Maintenance**: Update specific areas independently
3. **Better Git History**: Isolated change tracking
4. **Scalable**: Pattern grows with project
5. **Developer-Friendly**: Context-specific guidance

## Anti-patterns

**Avoid**: 1000+ line documents, mixed content types, deep nesting, outdated docs
**Prefer**: Focused files, clear purposes, regular updates, shallow hierarchies

**Summary**: Treat docs like code architecture - small, focused modules that compose well.
