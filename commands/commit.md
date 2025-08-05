Creates git commits with appropriate analysis based on the complexity of changes.

---

The agent automatically determines the level of analysis needed - from simple commits for straightforward changes to comprehensive analysis for complex staging strategies.

- **Conventions**: @docs/git/commit-guidelines.md (commit format and atomic commits)
- **Patterns**: @docs/git/git-patterns.md (analysis commands and workflows)
- **Process**: Adaptive approach based on change complexity

## Process

### Adaptive Analysis

The agent evaluates the repository state and determines the appropriate approach:

1. **Analyze Repository State**

   - Review git status and diffs
   - Assess complexity of changes
   - Check for external context (tickets, PRDs, etc.) if relevant

2. **Determine Strategy**

   - **Simple changes**: Direct staging and commit
   - **Complex changes**: Develop commit plan with staging strategy
   - **Mixed changes**: Create atomic commits for logical units

3. **Execute Commits**
   - Attempt automated execution where possible
   - Provide clear manual steps if intervention needed

## Usage Examples

### Basic Usage

```
/git-commit
```

With commit message:

```
/git-commit "Add new feature"
```

### With Context

Provide context for more complex analysis:

```
/git-commit Working on JIRA-1234: Add user authentication
```


## Output

### Simple Commit Success

```
✓ Commit completed:
  - feat: add user authentication
Ready to push!
```

### Multiple Commits Success

```
✓ Created 2 commits:
  - feat(auth): add login flow
  - test(auth): add login tests
Ready to push!
```

### Manual Intervention Required

```
MANUAL STEPS REQUIRED:

1. Stage partial changes in src/utils/helpers.js:
   git add -p src/utils/helpers.js
   (select only the formatDate function)

2. Create commit:
   git commit -m "feat(utils): add date formatting helper"

3. Stage remaining changes and commit:
   git add src/validation/
   git commit -m "feat(validation): add email validation"
```

## Implementation Notes

### Adaptive Approach

- Agent analyzes repository state and change complexity
- Simple changes receive direct execution
- Complex changes receive detailed analysis and staging strategies
- Mixed changes are split into atomic commits

### Technical Details

- Clear manual steps provided when automation isn't possible
- Focus on atomic commits for better history
- Appropriate use of sub-agents based on complexity
