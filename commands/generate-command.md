Generate a new slash command from user requirements using the standard command template.

---

Creates new slash commands following the established template structure and conventions. Analyzes user requirements to generate a properly formatted command file that fits seamlessly into the command system.

## Process

1. **Parse requirements** - Extract command purpose and identify key functionality
2. **Review template** - Load command template from @templates/command-template.md
3. **Check existing commands** - Ensure unique naming and consistent patterns
4. **Generate command** - Create command file with appropriate sections
5. **Save to commands directory** - Write to `~/.claude/commands/[command-name].md`

## Output Example

```
## Command Generated: `/analyze-dependencies`

**File Created**: `commands/analyze-dependencies.md`
**Purpose**: Deep code analysis to map dependencies between modules

The command follows the standard template with:
- Brief one-line description
- Detailed explanation with context
- Process steps for execution
- Usage examples
```

## Examples

**Generate analysis command**:
```
/generate-command Create a command to analyze code dependencies and visualize module relationships
```
Creates `/analyze-dependencies` with analysis workflow and visualization output

**Generate workflow command**:
```
/generate-command I need a command that sets up git hooks for the project
```
Creates `/setup-hooks` with step-by-step hook installation process

**Generate discovery command**:
```
/generate-command Make a command that helps explore available testing utilities
```
Creates `/test-utilities` with discovery and suggestion features

## Context Integration

- Command template structure: @templates/command-template.md
- Command design principles: @decisions/0005-command-system-design.md
- Documentation organization: @decisions/0006-documentation-organization-optimization.md
