## Intelligently improve code, documentation, architecture, and workflows.

Analyze current context and suggest targeted improvements. Accepts arguments to focus on specific areas: `/improve memory`, `/improve commands`, `/improve context`, or `/improve <custom-focus>`.

**Read context from:**

- `~/.claude/docs/memory-framework/architecture.md`
- `~/.claude/docs/memory-framework/guide.md`
- Project .claude/ directory structure
- Current working context and files

## Command Type

analysis - Complexity: medium

## Tool Usage

- **Primary**: Read, Glob, Grep, Task
- **Secondary**: LS, Bash
- **Avoid**: Write, Edit (analysis only)

## Context

- **Files**: .claude/ directory, CLAUDE.md, current working files
- **Patterns**: Repetitive workflows, token inefficiency, missing context
- **Dependencies**: Memory framework, command structure, development patterns

## Process

1. **Parse Arguments and Context**

   - Identify focus area from arguments (memory/commands/context/custom)
   - Analyze current working directory and files
   - Determine improvement scope and priorities

2. **Analyze Current State**

   - Review relevant architecture based on focus area
   - Identify gaps, inefficiencies, and opportunities
   - Assess token usage and organizational patterns
   - Evaluate workflow effectiveness

3. **Generate Targeted Improvements**

   - Suggest specific enhancements for focus area
   - Provide implementation approaches and templates
   - Prioritize by impact and maintenance cost
   - Include concrete examples and rationale

4. **Present Actionable Results**
   - High-impact improvements first
   - Clear implementation steps
   - Template and example references

## Improvement Focus Areas

### Memory Architecture (`/improve memory`)

- CLAUDE.md token efficiency and organization
- Missing or outdated project-specific context
- Opportunities for project-level commands
- Context loading patterns and optimization

### Command Structure (`/improve commands`)

- Command organization and discoverability
- Workflow automation opportunities
- Command consolidation and efficiency
- Template and pattern consistency

### Context Organization (`/improve context`)

- Spec and guide organization
- Documentation gaps and redundancy
- Cross-reference optimization
- Knowledge graph coherence

### Custom Focus (`/improve <custom>`)

- Specific area improvements based on arguments
- Code quality and architecture
- Development workflow optimization
- Tool integration and automation

## Output

Targeted improvement recommendations with implementation guidance, prioritized by impact and feasibility.

<improvement-output-template>
## [Focus Area] Improvements

### 🎯 High Priority

1. **[Specific Improvement]**

   - **Why**: [Benefit and rationale]
   - **How**: [Implementation approach]
   - **Impact**: [Expected outcome]

   ```markdown
   // Example implementation or template
   ```

### 📋 Implementation Steps

1. [Concrete action step]
2. [Concrete action step]
3. [Concrete action step]

### 🔧 Templates and Resources

- [Template name]: `@templates/[template-file].md`
- [Guide reference]: `@guides/[guide-file].md`
- [Context reference]: `@context/[context-file].md`

### 📊 Expected Outcomes

- [Measurable improvement]
- [Workflow enhancement]
- [Maintenance reduction]
  </improvement-output-template>

## Validation

- Improvements are actionable and specific
- Implementation steps are clear and feasible
- Templates and resources are correctly referenced
- Expected outcomes are measurable

## Examples

<example-1>
**Input**: `/improve memory`
**Output**: Analysis of CLAUDE.md token usage, suggest reorganization of context loading, propose new project-level commands for common workflows
</example-1>

<example-2>
**Input**: `/improve commands workflow automation`
**Output**: Identify repetitive command patterns, suggest consolidated commands, provide templates for workflow automation
</example-2>

<example-3>
**Input**: `/improve context documentation gaps`
**Output**: Identify missing specs and guides, suggest documentation architecture improvements, provide implementation templates
</example-3>

## Related Commands

- `/context` - Context management and optimization
- `/init-project` - Project initialization
- `/analyze` - Deep project analysis
- `/save-context` - Context preservation and organization
