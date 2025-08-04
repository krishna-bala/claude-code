# Documentation Guide

Comprehensive guide for creating, maintaining, and evolving documentation in the Claude Code Memory Framework.

## Core Philosophy

**Fundamental Principle**: Apply SOLID principles to documentation - small, focused files with single purpose and audience.

- **Clear, concise, and actionable**: Keep documentation brief and essential
- **User-focused and task-oriented**: Only document what directly impacts development
- **Maintained alongside code changes**: Update docs as you work
- **Progressive disclosure of complexity**: Layer information appropriately
- **Prompt Engineering**: Documentation serves as effective prompting for Claude
- **Token Efficiency**: Load only what's needed for each task

## Content Guidelines

### Writing Principles

- **Single Responsibility**: Each document serves one purpose for one audience
  - Single purpose means cohesive content serving one goal - a comprehensive testing guide serves "testing guidance" as its single purpose
  - Avoid fragmentation when content naturally belongs together (e.g., testing philosophy + practices + frameworks)
- **Actionable Information**: Current with implementation, directly useful
- **Clear Navigation**: Proper cross-references between docs
- **Concise Style**: Bullet points, short sentences, minimal prose

### @-Reference Guidelines

**Important**: `@-references` in code blocks are NOT escaped - they will be imported even in examples. Always use backticks to escape `@-references` when showing examples.

**Path Options**:

1. **Full paths from project root**: /home/user/project/docs/testing.md
2. **Relative to current directory**: ../docs/testing.md or docs/testing.md

**Proper usage examples** (escaped with backticks):

- `@docs/testing.md` - References testing documentation (relative to working directory)
- `@/full/path/to/decisions/0001-database-choice.md` - Full path reference

**Improper usage examples** (escaped with backticks):

- `@non-existent-file.md` - Ensure referenced files exist
- `@some-file` - Always include file extension
- Using `@-references` in code blocks without backticks (they will be imported!)

### When to Split Documents

Split when they:

- Serve multiple distinct audiences
- Mix different content types (e.g., philosophy + implementation + procedures)
- Violate single responsibility principle
- Become difficult to navigate or find specific information

## Framework Structure

### Core Components

1. **CLAUDE.md Files**

   - Global: `~/.claude/CLAUDE.md` - Single @-reference to `@docs/README.md`
   - Project: `<project>/.claude/CLAUDE.md` - Project-specific context
   - Auto-loaded when Claude enters directories

2. **Directory Structure**

   ```
   ~/.claude/
   ├── agents/                # 50+ sub-agent specifications
   ├── architecture.md        # Consolidated framework documentation
   ├── CLAUDE.md              # Entry point
   ├── commands/              # 12 slash commands
   ├── decisions/             # M-ADR decision records
   └── docs/                  # Domain-organized documentation
   ```

## CLAUDE.md Strategy

### Purpose

CLAUDE.md is automatically loaded when Claude Code starts working in a directory.
It provides immediate context and can import other files via `@-references`.

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

## Maintenance Workflows

### Adding New Documentation

1. Determine correct domain directory
2. Follow single purpose/audience principle

### Updating Existing Documentation

1. Check for dependencies with grep
2. Update all related references
3. Verify examples still work
4. Test loading with discovery commands
5. Create ADR for significant changes

### Deprecating Documentation

1. Search for all references first
2. Move content if still valuable
3. Update all referencing files
4. Add deprecation notice temporarily
5. Remove after grace period

### Continuous Updates

- **Update docs as you work**: Modify when making significant changes
- **Document decisions**: Record architectural choices via ADRs
- **Keep context current**: Ensure docs reflect actual implementation
- **Commit documentation separately**: Dedicated commits for doc updates
- **Use descriptive messages**: Follow conventional commit format

## Maintenance Tasks

### Prompt Quality Checks

When updating documentation, evaluate:

1. **Clarity**: Would Claude understand this unambiguously?
2. **Structure**: Does it follow LLM-friendly patterns?
3. **Constraints**: Are boundaries clearly defined?
4. **Examples**: Are concrete examples provided?
5. **Success Criteria**: Can Claude determine when a task is complete?

## Quality Metrics

### Documentation Health Indicators

- **Green**: All references valid, examples work, structure matches implementation
- **Yellow**: Minor inconsistencies, outdated examples, formatting issues
- **Red**: Broken references, structural mismatches, missing critical docs

### Current Status: Yellow

- Several high-priority structural issues
- Documentation drift in multiple areas
- Good foundation but needs cleanup

## Known Issues

### High Priority

1. **Structural Debt**

2. **Documentation Drift**

3. **Broken References**

### Medium Priority

1. **Content Organization**

2. **Missing Documentation**

## Integration Points

- Commands and Agents rely on documentation for context

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
