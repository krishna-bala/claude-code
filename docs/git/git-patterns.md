# Git Workflow Patterns

## Git Commit Format

<commit-message-format>

```
<type>(<scope>): <subject>

<body>

<footer>
```

</commit-message-format>

## Commit Types

**Types**: `feat`, `fix`, `docs`, `refactor`, `test`, `style`, `perf`, `build`, `ci`, `chore`

## Commit Message Guidelines

**Scope**: Use forward slash notation (e.g., `planner/mast_transition`, `detection/types`)

**Subject Line**:

- Brief (4-8 words), action-oriented, imperative mood
- Examples: "Fix compilation errors", "Add design document", "Update API with context struct"

**Body** (when needed):

- Simple changes: Single line explanation
- Complex changes: Paragraph + bullet points for technical specifics
- Action-oriented: "Introduces", "Implements", "Updates", "Replaces"

**Footers** (optional): `Bug: <ticket>`, `Test: <command>`

**Do NOT include**: "Generated with Claude Code" or "Co-Authored-By: Claude" footers

## Git Analysis Commands

1. **Check git status** to see all staged, unstaged, and untracked changes
2. **Check git diff and git diff --staged** to review staged vs. unstaged and untracked changes
3. **Check recent commit history** with `git log --oneline -10` to understand recent context

## Git Branch Analysis

1. **Analyze branch changes** from main/base branch
2. **Review commit history** to understand the scope of changes
3. **Check if current branch tracks a remote** and is up to date with the remote
4. **Run git log and git diff [base-branch]...HEAD** to understand full commit history
