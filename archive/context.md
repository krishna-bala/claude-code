Intelligent discovery and loading of relevant context files for the current task.

---

Explore the context catalog and read additional files that help build context around the current task. Optionally specify a task area like `/context debugging` or `/context testing` to focus on specific workflows. This command systematically discovers and loads relevant context to build comprehensive understanding for development tasks.

The **context catalog** refers to the organized collection of context files in `~/.claude/context/`, `~/.claude/guides/`, `~/.claude/templates/`, and project-specific `.claude/` directories that contain development standards, workflows, and patterns.

## Command Type

workflow - [Complexity: medium]

## Tool Usage

- **Primary**: Read (context files), TodoRead (check existing tasks), Glob (discover files), LS (explore structure)
- **Secondary**: Grep (find patterns), TodoWrite (track context loading)
- **Avoid**: Edit, Write, MultiEdit (context loading only, no modifications)

## Context

- **Files**: `~/.claude/docs/README.md`, `~/.claude/docs/README.md`, `~/.claude/docs/templates/README.md`, project `.claude/` structure
- **Patterns**: Task-based context requirements, file type detection, workflow-specific needs
- **Dependencies**: Project structure, development phase, task complexity

## Process

1. **Analyze Current Situation** - Identify task type, files involved, and context gaps
2. **Explore Context Catalog** - Read index files and identify relevant areas
3. **Load Relevant Context** - Priority loading of essential context and task-specific guidance
4. **Cross-Reference** - Connect related concepts across files

## Output

Loads comprehensive context files and provides summary of discovered resources relevant to current task.

<output-template>

## Context Loaded

### Essential Context

- **Files read**: [List of loaded context files]
- **Key patterns**: [Relevant standards and workflows]
- **Related specs**: [Project-specific context]

### Task-Specific Context

- **Workflow guides**: [Relevant process documentation]
- **Templates**: [Available templates for task]
- **Examples**: [Reference implementations]

### Next Steps

- **Apply context**: [How to use loaded information]
- **Missing context**: [Gaps that need attention]
- **Follow-up**: [Additional context to consider]

</output-template>

## Validation

- Relevant context files are loaded
- Task-specific guidance is identified
- Cross-references are established
- Missing context gaps are noted

## Examples

<example-1>
**Input**: `/context debugging`
**Output**: Loads debugging-workflows.md, testing.md, and project-specific debugging specs
</example-1>

<example-2>
**Input**: `/context` (general)
**Output**: Discovers current task context and loads appropriate workflow guides and standards
</example-2>

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

  - `~/.claude/docs/README.md`
  - `~/.claude/docs/README.md`
  - `~/.claude/docs/templates/README.md`
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

- `~/.claude/docs/git/commit-guidelines.md`
- `~/.claude/docs/git/pr-guidelines.md`
- `<project>/.claude/specs/git-standards.md` (if exists)

#### Testing Work

Read:

- `~/.claude/docs/testing/testing.md`
- `~/.claude/docs/testing/tdd.md`
- `<project>/.claude/specs/testing-patterns.md` (if exists)

#### Debugging

Read:

- `~/.claude/docs/project-setup/debugging-workflows.md`
- `<project>/.claude/specs/language-debugging.md` (if exists)
- `<project>/.claude/guides/troubleshooting.md` (if exists)

#### Code Review

Read:

- `~/.claude/docs/git/code-review.md`
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

1. Read `~/.claude/docs/memory-framework/architecture.md`
2. Explore `<project>/.claude/specs/` for language specs
3. Load `<project>/.claude/guides/setup.md` (if exists)
4. Read relevant templates from `~/.claude/docs/templates/`

### Feature Development

1. Load `<project>/CLAUDE.md`
2. Read `<project>/.claude/specs/` for relevant language specs
3. Load testing and code review context from `~/.claude/docs/`
4. Explore `<project>/.claude/guides/` for related patterns

### Debugging Session

1. Load `~/.claude/docs/project-setup/debugging-workflows.md`
2. Read `<project>/.claude/specs/` for language-specific tools
3. Load testing context for verification
4. Explore `<project>/.claude/guides/troubleshooting.md` (if exists)

### Code Review

1. Load `~/.claude/docs/git/code-review.md`
2. Read `<project>/.claude/specs/` for project standards
3. Load git and PR context from `~/.claude/docs/git/`
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
