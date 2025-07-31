# Command Template

Template for creating slash commands. Copy and customize for clarity and usefulness.

<command-template>

[Brief one-line description of what the command does.]

---

[Detailed description paragraph explaining the command's purpose, how it works, and when to use it. Include context about arguments or parameters if needed. Keep focused and practical.]

## [Optional Section Name]

[Include additional sections only as needed. Common useful sections:]

- **Process**: Step-by-step workflow when helpful
- **Output Example**: Show expected output format
- **Examples**: Usage examples with different scenarios
- **Context Integration**: When to reference docs with @-references
- **Sub-agent Delegation**: When to recommend breaking into smaller tasks

[Remove any sections that don't add value for your specific command.]

</command-template>

## Template Guidelines

### Structure

- **Brief + Detailed**: Start with one-line description, then detailed paragraph
- **Flexible sections**: Only include sections that enhance understanding
- **Practical focus**: Emphasize real-world usage over rigid categorization

### Content Guidance

- **Length**: Keep total length reasonable (30-80 lines)
- **Clarity**: Write for practical usage, not documentation completeness
- **Examples**: Include concrete examples when they clarify usage

### Integration

- **@-references**: Link to relevant docs when command relates to broader topics
  - Example: Reference `@docs/testing/tdd.md` for testing commands
- **Sub-agent delegation**: Suggest when complex tasks should be broken down
  - Example: "For large codebases, consider using sub-agents for each module"

### Common Optional Sections

- **Process**: Multi-step workflows that benefit from explicit ordering
- **Output Example**: When output format needs clarification
- **Examples**: Different usage scenarios with expected results
- **Context Integration**: How command fits with broader workflows
