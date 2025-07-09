# Command Template

Template for creating slash commands. Copy and customize.

<command-template>

[Brief description (<100 tokens) **what** the command does.]

---

[Detailed description of this command. Explains how to reason about the context state and arguments provided to this command. Less than 300 tokens.]

## Command Type

[workflow|analysis|generation|maintenance] - [Complexity: light|medium|deep]

## Tool Usage

- **Primary**: [Most important tools for this command type]
- **Secondary**: [Supporting tools]
- **Avoid**: [Tools that shouldn't be used]

## Context

- **Files**: [Key files/directories to examine first]
- **Patterns**: [What signals to look for in code/config]
- **Dependencies**: [Related systems/components to understand]

## Process

1. **[Step Name]** - [Action and result]
2. **[Step Name]** - [Action and result]
3. **[Step Name]** - [Action and result]

## Output

[Brief description of what the command returns or produces. Less than 200 tokens.]

<output-template>
[Format specification for command output]
</output-template>

## Validation

[How to verify the command worked correctly]

## Examples

<example-1>
**Input**: [Scenario]
**Output**: [Expected result]
</example-1>

<example-2>
**Input**: [Different scenario]
**Output**: [Expected result]
</example-2>

</command-template>

## Template Guidelines

- Keep commands 30-80 lines total
- Focus on automation and practical usage
- Choose appropriate command type and complexity
- Specify tool usage clearly
- Include concrete examples with expected outcomes
