Generate or improve slash commands following a systematic, incremental approval process.

---

Creates new or improves existing slash commands through an iterative refinement process with user approval at each stage.
Analyzes requirements, proposes minimal command sets, and generates commands following the established template structure.
Emphasizes creating only necessary commands with clear, focused workflows.

## Process

1. **Requirements Analysis**

   - Extract command purpose and workflow from user context
   - Identify specific functionality needed
   - Determine if existing commands can be enhanced vs. creating new ones

2. **Proposal Generation**

   - Create detailed command proposal with justification
   - Include specific examples of when the command would be used
   - Compare with existing commands to avoid duplication
   - Present for yes/no approval

3. **Iterative Refinement**

   - Incorporate user feedback
   - Refine scope and workflow
   - Re-present updated proposal
   - Continue until approved or rejected

4. **Command Creation**
   - Load command template from @/home/krishna/.claude/templates/command-template.md
   - Generate command file with approved specifications
   - Include appropriate agent references and documentation links
   - Save to `~/.claude/commands/[command-name].md`

## Output Example

```
## Command Proposal: /analyze-dependencies

**Purpose**: Deep code analysis to map dependencies between modules

**Key Functionality**:
- Parse import statements across codebase
- Generate dependency graphs
- Identify circular dependencies
- Analyze module coupling metrics

**When to Use**:
- "Show me all dependencies of the auth module"
- "Find circular dependencies in the codebase"
- "Generate a dependency graph for documentation"

**Justification**: Dependency analysis is a common need for refactoring and documentation that warrants a dedicated command

**Comparison with Existing Commands**:
- /review: Focuses on code quality, not structural analysis
- /debug: Targets runtime issues, not static analysis

Approve this command? (yes/no)
```

After approval, generates:

```
## Command Created: `/analyze-dependencies`

**File**: `~/.claude/commands/analyze-dependencies.md`
**Agents Referenced**: code-archaeologist, documentation-specialist
**Documentation Links**: @docs/architecture/dependency-management.md
```

## Examples

**Proposing an analysis command**:

```
/generate-command Create a command to analyze code dependencies and visualize module relationships
```

Presents proposal for `/analyze-dependencies`, refines based on feedback, then creates command

**Enhancing existing command**:

```
/generate-command I need better git hooks setup with pre-commit checks
```

Proposes enhancement to existing `/git-commit` rather than new command

**Workflow command with approval**:

```
/generate-command Make a command that automates our deployment process
```

Proposes `/deploy` with specific stages, gets approval, generates with proper safeguards

**Discovery command iteration**:

```
/generate-command Help me explore available testing utilities in the codebase
```

Initial proposal → User feedback: "Include test coverage tools" → Refined proposal → Approval → Creates `/test-discovery`

## Context Integration

- Command template structure: @/home/krishna/.claude/templates/command-template.md
- Command design principles: @/home/krishna/.claude/decisions/0005-command-system-design.md
- Documentation organization: @/home/krishna/.claude/decisions/0006-documentation-organization-optimization.md
- Memory framework architecture: @/home/krishna/.claude/docs/architecture.md

## Sub-agent Delegation

For complex command generation tasks:

- Use @agent-code-archaeologist to analyze existing command patterns
- Use @agent-documentation-specialist to create command documentation
- Use @agent-team-configurator to update command registry if needed
