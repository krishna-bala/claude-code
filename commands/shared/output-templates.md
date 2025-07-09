# Output Templates

## Analysis Template

```
# Deep Understanding Analysis

## Core Terminology
- **[Term]**: [Clear definition]

## Needs Assessment
- **Explicit**: [Stated requirements]
- **Implicit**: [Underlying needs]
- **Out-of-Scope**: [Excluded items]

## Stakeholders
- **Primary Users**: [Direct users]
- **Secondary**: [Indirectly affected]
- **Maintainers**: [Who maintains solution]

## Success Criteria
- **Functional**: [What it must do]
- **Non-functional**: [Performance requirements]
- **Boundaries**: [Solution scope limits]

## Constraints & Context
- **Technical**: [Technical limitations]
- **Resource**: [Time/budget/personnel limits]
- **Cultural**: [Environmental factors]

## Clarification Needs
- **Assumptions**: [Require validation]
- **Open Questions**: [Need answers]
- **Potential Issues**: [Confusion areas]
```

## Session Context Template

```
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
- [Auto-linked references to ~/.claude/docs/ files used]
- [Project-specific context files referenced]

## Code Snippets
[Key code examples with explanations]
```

## PR Description Template

```
## Summary
Brief description of changes (2-3 sentences)

## Changes
- List key changes
- Focus on "what" and "why"
- Reference related issues

## Testing
- [ ] Unit tests pass
- [ ] Integration tests pass
- [ ] Manual testing completed

## Screenshots (if applicable)
Add screenshots for UI changes

## Related Issues
Fixes #123
Related to #456
```

## Project Initialization Output

```
## Project Initialized ✅

### Created Structure
```

.claude/
├── CLAUDE.md # Project context
├── specs/
│ └── README.md # Spec index
├── guides/
│ └── README.md # Guide index
├── templates/
│ └── README.md # Template index
└── sessions/ # Development sessions
└── .current-session # Active session tracker

```

### Detected Configuration
- **Language**: [Detected language]
- **Framework**: [Detected framework]
- **Build Tool**: [Detected tool]
- **Test Runner**: [Detected runner]

### Suggested Next Steps
1. Edit `.claude/CLAUDE.md` with project specifics
2. Add language standards: `[suggested spec]`
3. Document architecture in guides/
4. Start first session: `/session-start [session-name]`
5. Commit `.claude/` to version control
```
