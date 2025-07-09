Generate a new slash command from user requirements using the standard command template.

---

This command creates new slash commands following the established template structure and conventions. It analyzes the user's requirements, determines the appropriate command type and complexity, selects suitable tools, and generates a properly formatted command file.

## Command Type

generation - [Complexity: medium]

## Tool Usage

- **Primary**: Read (template), Write (new command file), Glob (check existing commands)
- **Secondary**: LS (verify directory structure)
- **Avoid**: Bash (not needed for file generation)

## Context

- **Files**: `~/.claude/docs/templates/command-template.md`, existing commands in `~/.claude/commands/`
- **Patterns**: Command naming conventions, category patterns, tool usage patterns
- **Dependencies**: Template structure, command organization standards

## Process

1. **Parse Requirements** - Extract command purpose, identify category and complexity level
2. **Generate Structure** - Create command following template with all required sections
3. **Write Command File** - Save to appropriate location with proper naming convention

## Output

Creates a new command file in the commands directory following the standard template structure.

<output-template>

## Command Generated: `/[command-name]`

**File Created**: `commands/[command-name].md`
**Command Type**: [type] - [complexity]
**Primary Tools**: [tool list]

### Next Steps

1. Review the generated command for accuracy
2. Test with sample inputs
3. Adjust tool usage or process steps as needed

</output-template>

## Validation

- Command file exists at correct location
- All required sections are present
- Command name follows kebab-case convention
- Examples demonstrate proper usage

## Examples

<example-1>

**Input**: Generate a command to analyze code dependencies
**Output**: Creates `/analyze-dependencies` command with analysis type, Read/Grep tools, and dependency tracking process

</example-1>

<example-2>

**Input**: Generate a command to setup git hooks
**Output**: Creates `/setup-hooks` command with workflow type, Bash/Write tools, and hook installation process

</example-2>
