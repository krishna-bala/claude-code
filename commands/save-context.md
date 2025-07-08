## Capture session context and decisions for future reference in a structured file.

Extract and save relevant context from the current development session to a structured file. Interactively verify content with user through a checklist review.

## Usage

Use when you want to preserve important context, decisions, or solutions from the current session for future reference. Saves to `.claude/sessions/YYYYMMDD_HHMMSS-CONTEXT.md` by default.

## Process

1. **Session Analysis**

   - Review conversation history for key decisions made
   - Identify code changes, solutions implemented, and files modified
   - Extract context files that were referenced or loaded
   - Note unresolved issues, follow-up items, and next steps
   - Gather relevant code snippets and explanations

2. **Content Verification** (Interactive Checklist)

   - Present identified content as a checklist for user review
   - Allow user to check/uncheck items to include
   - Provide brief descriptions of each item's relevance
   - Allow user to add additional context items
   - Confirm final selection before generating file

3. **File Generation**
   - Get timestamp using time MCP server for filename
   - Create structured context file at `.claude/sessions/YYYYMMDD_HHMMSS-CONTEXT.md`
   - Include session metadata and auto-links to referenced context files
   - Organize content by topic areas and relevance
   - Add cross-references to related files and resources

## Context Loading

Automatically loads:

- Current session conversation history
- Files that were read or modified during session
- Context files that were referenced

Uses time MCP server:

- `mcp__time__get_current_time` for timestamp generation

## Output Format

<output-format>

# Session Context - [Date/Time]

## Session Summary

- **Duration**: [Session length]
- **Focus Areas**: [Main topics discussed]
- **Key Decisions**: [Important choices made]

## Code Changes

- **Files Modified**: [List with brief descriptions]
- **Solutions Implemented**: [What was built/fixed]
- **Technical Approach**: [How problems were solved]

## Context References

- **Files Referenced**: [Auto-linked to actual files]
- **Standards Applied**: [Links to relevant context files]
- **Patterns Used**: [Development patterns followed]

## Key Insights

- **Learning Points**: [Important discoveries]
- **Best Practices**: [Patterns worth remembering]
- **Gotchas**: [Things to watch out for]

## Action Items

- **Next Steps**: [Immediate follow-up tasks]
- **Future Considerations**: [Longer-term items]
- **Unresolved Issues**: [Things that need attention]

## Relevant Context Files

- [Auto-linked references to ~/.claude/ files used]
- [Project-specific context files referenced]

## Code Snippets

[Key code examples with explanations]

</output-format>

## Checklist Verification Process

Present content as:

```
□ Key decision about database schema design
□ Solution for authentication token handling
□ Code changes in user.py and auth.py
□ Discussion about testing approach
□ Performance optimization notes
□ Debugging session for login timeout issue
□ References to ~/.claude/context/testing.md
□ Action items for next session
□ Unresolved question about deployment strategy

Additional items to include:
[ User can add items here ]
```

## Examples

### Example 1: Bug Fix Session

Input: Session focused on debugging login timeout issue
Output: Context file with problem analysis, solution approach, code changes, and testing notes

### Example 2: Feature Development

Input: Session implementing new user registration feature  
Output: Context file with requirements, design decisions, implementation details, and next steps

## Related Commands

- `/context` - Load additional context for current session
- `/analyze` - Deep analysis before implementation
- `/debug` - Systematic debugging workflow
