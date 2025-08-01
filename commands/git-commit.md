Orchestrates a comprehensive git commit workflow by composing specialized agents.

---

Analyzes changes, develops commit strategies, and executes high-quality commits following best practices. Supports resuming after manual intervention.

## Process

### Initial Flow

1. **Analyze Repository State**
   - Use @agent-git-change-archaeologist to understand current changes
   - Include any external context (tickets, PRDs, etc.) if provided

2. **Develop Commit Strategy**
   - Use @agent-git-commit-expert to create commit plan
   - Strategy includes staging plan and commit messages

3. **Execute Commits**
   - Attempt automated execution where possible
   - Return manual steps if intervention needed
   - **Save strategy for resume capability**

### Resume Flow (--resume)

1. **Quick Validation**
   - Brief check that repository state matches saved strategy
   - Skip full archaeologist analysis

2. **Continue Execution**
   - Pick up where automation left off
   - Complete remaining commits from saved strategy

## Usage Examples

### Initial Run
```
/git-commit
```
or with context:
```
/git-commit Working on JIRA-1234: Add user authentication
```

### Resume After Manual Steps
```
/git-commit --resume
```

## Output

### Success
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

2. Run: /git-commit --resume

SAVED STRATEGY:
- feat(utils): add date formatting helper
- feat(validation): add email validation
```

### Resume Success
```
Resuming from saved strategy...
✓ Created remaining commits:
  - feat(validation): add email validation
All commits complete!
```

## Implementation Notes

- Strategy is saved in session context when manual steps are needed
- Resume validates saved strategy is still applicable
- If files changed significantly, resume may suggest restarting