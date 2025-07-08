## Intelligent discovery and loading of relevant context files for the current task.

Explore the context catalog and read additional files that help build context around the current task. Optionally specify a task area like `/context debugging` or `/context testing` to focus on specific workflows.

## Context Discovery Workflow

### 1. Analyze Current Situation

- **Task Identification**
  - What type of work is being done?
  - What files/languages are involved?
  - What problems are being solved?
- **Context Gaps**
  - What information might be missing?
  - What patterns or standards apply?
  - What workflows are relevant?

### 2. Explore Context Catalog

- **Read Index Files**

  - `~/.claude/context/README.md`
  - `~/.claude/guides/README.md`
  - `~/.claude/templates/README.md`
  - `<project>/.claude/` structure

- **Identify Relevant Areas**
  - Language-specific specs
  - Workflow guides
  - Standards and patterns
  - Templates and examples

### 3. Load Relevant Context

- **Priority Loading**

  - Essential context first
  - Task-specific guidance
  - Related patterns and standards
  - Supporting documentation

- **Selective Reading**
  - Read full files for core context
  - Scan headers for discovery
  - Load specific sections when needed

## Context Loading Strategies

### Task-Based Context Loading

#### Git Operations

Read:

- `~/.claude/context/git-commit-guidelines.md`
- `~/.claude/context/pr-guidelines.md`
- `<project>/.claude/specs/git-standards.md` (if exists)

#### Testing Work

Read:

- `~/.claude/context/testing.md`
- `~/.claude/context/tdd.md`
- `<project>/.claude/specs/testing-patterns.md` (if exists)

#### Debugging

Read:

- `~/.claude/guides/debugging-workflows.md`
- `<project>/.claude/specs/language-debugging.md` (if exists)
- `<project>/.claude/guides/troubleshooting.md` (if exists)

#### Code Review

Read:

- `~/.claude/context/code-review.md`
- `<project>/.claude/specs/code-standards.md` (if exists)
- `<project>/.claude/specs/architecture-patterns.md` (if exists)

### File Type Detection

- `*.py` files → Python specs and patterns
- `*.js`/`*.ts` → JavaScript/TypeScript standards
- `*.md` → Documentation guidelines
- `*.yml`/`*.yaml` → Configuration standards
- `Dockerfile` → Container and deployment patterns

### Project Structure Analysis

Automatically explore:

- `<project>/.claude/specs/` → Project-specific standards
- `<project>/.claude/guides/` → Project workflows
- `<project>/.claude/templates/` → Project templates
- `<project>/README.md`, `<project>/CONTRIBUTING.md` → Project context

## Context Catalog Navigation

### Discovery Process

1. **Start with catalogs**: Read README files to understand available context
2. **Follow references**: Use @-references to find related content
3. **Load progressively**: Essential context first, details as needed
4. **Cross-reference**: Connect related concepts across files

### Efficient Loading

- Use line ranges for specific sections
- Read catalogs fully, detailed content selectively
- Follow cross-references between files
- Load context just-in-time for tasks

## Common Context Patterns

### New Project Setup

1. Read `~/.claude/context/memory-framework.md`
2. Explore `<project>/.claude/specs/` for language specs
3. Load `<project>/.claude/guides/setup.md` (if exists)
4. Read relevant templates from `~/.claude/templates/`

### Feature Development

1. Load `<project>/CLAUDE.md`
2. Read `<project>/.claude/specs/` for relevant language specs
3. Load testing and code review context from `~/.claude/context/`
4. Explore `<project>/.claude/guides/` for related patterns

### Debugging Session

1. Load `~/.claude/guides/debugging-workflows.md`
2. Read `<project>/.claude/specs/` for language-specific tools
3. Load testing context for verification
4. Explore `<project>/.claude/guides/troubleshooting.md` (if exists)

### Code Review

1. Load `~/.claude/context/code-review.md`
2. Read `<project>/.claude/specs/` for project standards
3. Load git and PR context from `~/.claude/context/`
4. Explore `<project>/.claude/specs/` for relevant code area specs

## Best Practices

### Systematic Discovery

- Always start with catalog/`README` files
- Use directory structure to understand organization
- Follow cross-references and @-links
- Load context incrementally

### Efficient Context Building

- Read essential context fully
- Scan headers for discovery
- Load details on-demand
- Connect related concepts

### Context Maintenance

- Understand what context is available
- Know where to find specific information
- Use consistent loading patterns
- Build context systematically for each task

This workflow helps build comprehensive understanding by systematically exploring and loading the most relevant context for any development task.
