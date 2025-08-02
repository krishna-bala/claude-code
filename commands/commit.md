Orchestrates git commits with two modes: quick commits for personal projects (default) or comprehensive analysis with specialized agents (--think flag).

---

Default mode performs quick commits for personal projects without deep analysis. The --think flag enables comprehensive commit orchestration using specialized agents for complex staging strategies.

## Process

### Quick Mode (Default)

For personal projects and straightforward commits:

1. **Check Status** - Quick git status and diff review
2. **Stage Changes** - Simple staging of modified files
3. **Create Commit** - Generate commit with conventional format
4. **No sub-agents used** - Direct execution for speed

### Think Mode (--think flag)

For complex commits requiring deep analysis:

1. **Analyze Repository State**

   - Understand current changes and context,
     checking external context (tickets, PRDs, etc.) if relevant

2. **Develop Commit Strategy**

   - Create a commit plan
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

### Quick Mode (Default - Personal Projects)

```
/git-commit
```

Quick commit with message:

```
/git-commit "Add new feature"
```

### Think Mode (Complex Staging)

```
/git-commit --think
```

With context for complex analysis:

```
/git-commit --think Working on JIRA-1234: Add user authentication
```

### Resume After Manual Steps (Think Mode)

```
/git-commit --resume
```

## Output

### Quick Mode Success

```
✓ Quick commit completed:
  - feat: add user authentication
Ready to push!
```

### Think Mode Success

```
✓ Created 2 commits:
  - feat(auth): add login flow
  - test(auth): add login tests
Ready to push!
```

### Manual Intervention Required (Think Mode)

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

### Resume Success (Think Mode)

```
Resuming from saved strategy...
✓ Created remaining commits:
  - feat(validation): add email validation
All commits complete!
```

## Implementation Notes

### Mode Selection

- **Quick Mode**: Default for personal projects, simple changes, no sub-agents
- **Think Mode**: Complex commits, partial staging, multiple related changes

### Technical Details

- Strategy is saved in session context when manual steps are needed (think mode)
- Resume validates saved strategy is still applicable
- If files changed significantly, resume may suggest restarting
- Quick mode bypasses agent orchestration for speed
