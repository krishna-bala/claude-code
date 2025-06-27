# Command Template

Template for creating slash commands. Copy and customize.

```markdown
# [Command Name]

Brief description of what this command does.

## Usage

When to use this command and expected outcome.

## Process

1. **[Step 1 Name]**
   - Action to perform
   - What to check or analyze
   - Expected result

2. **[Step 2 Name]**
   - Next action
   - Processing or validation
   - Output format

3. **[Step 3 Name]**
   - Final action
   - Present results
   - Next steps

## Context Loading

Automatically loads:
- `@[file]` - Always needed
- `@[file]` - For specific functionality

Conditionally loads based on:
- File types present
- Current git state
- Error patterns
- User query

## Output Format

```markdown
## [Command] Results

### Section 1
- Finding or result
- Relevant detail

### Section 2
- Analysis outcome
- Recommendations

### Next Steps
1. Suggested action
2. Alternative approach
```

## Examples

### Example 1: [Scenario]
Input: [User action or state]
Output: [Expected result]

### Example 2: [Scenario]
Input: [User action or state]
Output: [Expected result]

## Related Commands

- `/[command]` - Related functionality
- `/[command]` - Often used together
```

## Customization Guidelines

1. Keep process steps clear and numbered
2. Specify what context to load
3. Define output format
4. Include 1-2 examples
5. Target 30-80 lines total
6. Focus on automation

## Example Commands

- Analysis: check-standards.md, analyze-dependencies.md
- Generation: init-project.md, create-module.md
- Validation: lint-check.md, test-coverage.md