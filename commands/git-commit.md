# Git Commit - Enhanced staging and atomic commit workflow

Interactive staging evaluation and commit workflow prioritizing atomic changes. For pre-staged evaluation, add context like `/git-commit I've already staged some changes. Evaluate and commit if they are a cohesive changeset`.

**Read context from:**
- `~/.claude/context/git-commit-guidelines.md`
- `~/.claude/context/pr-guidelines.md`

Handles both scenarios:
1. **Fresh staging**: Analyze working directory and stage cohesive changes
2. **Pre-staged evaluation**: Review staged changes and commit if atomic

## Process

1. **Check git status** to see all staged, unstaged, and untracked changes
2. **Check git diff and git diff --staged** to review staged vs. unstaged and untracked changes
3. **Check recent commit history** with `git log --oneline -10` to understand recent context

4. **Analyze changes and plan commits** (prefer atomic commits):

   - **If staged changes exist**: Review for logical cohesion
     - Single concern (atomic) → Create single commit
     - Mixed concerns → Use `git reset` and re-stage logically
     - Ask: "Does this do exactly one thing?"
   - **If unstaged changes exist**: Decide staging strategy
     - Related to staged → Stage with `git add`
     - Separate concern → Plan follow-up commit
     - Partial staging → Use `git add -p` for hunks
   - **If untracked files exist**: Evaluate relevance
     - Project files → Stage and include
     - Temp/build files → Ignore or add to `.gitignore`

5. **Generate commit message** following format:

   ```
   <type>(<scope>): <subject>

   <body>

   <footer>
   ```

6. **Execute the commit** using proper git command

## Commit Message Guidelines

**Structure**: `<type>(<scope>): <brief description>`

**Types**: `feat`, `fix`, `docs`, `refactor`, `test`, `style`, `perf`, `build`, `ci`, `chore`

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

## Atomic Commit Strategy

**Prioritize atomic commits over convenience** - challenge default assumptions:

### When to Break Apart Changes

- **Seemingly related changes**: Ask if they address different concerns (bug fix + refactor, feature + cleanup)
- **File-based grouping**: Don't commit files together just because they were modified together
- **Time-based grouping**: Don't commit changes together just because they were made at the same time
- **"While I'm here" changes**: Separate intentional changes from opportunistic fixes

### When to Complete Atomic Units

- **Partial implementations**: Stage additional unstaged files to make commit logically complete
- **Incomplete refactors**: Include related changes that make the atomic unit coherent
- **Missing tests**: Add corresponding test changes to complete the atomic unit

### Strategic Questions

- "Are these changes solving the same problem or different problems?"
- "Would I want to revert these changes independently?"
- "Can someone understand this commit without seeing other changes?"
- "Does this commit leave the code in a logical intermediate state?"

**Default behavior**: Resist committing just because files are staged - reorganize for atomic clarity.

Only commit changes that are currently staged unless specifically requested to stage additional files.
