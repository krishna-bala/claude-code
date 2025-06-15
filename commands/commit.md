# Interactive Commit

Create a git commit by helping the user select which changes to include:

1. **Check git status** to see all staged and unstaged changes
2. **Show git diff** for unstaged changes and **git diff --staged** for staged changes
3. **Check recent commit history** with `git log --oneline -10` to understand the commit message style
4. **Present the changes to the user** by listing:
   - Currently staged files (if any)
   - Unstaged modified files (if any)
   - Untracked files (if any)
5. **Ask the user** which specific files or changes should be included in this commit
6. **Stage the requested files** using `git add` for the files the user specified
7. **Analyze the staged changes** and write a clear, meaningful commit message that:
   - Follows the `.gitmessage` template format: `<type>(<scope>): <description>`
   - Uses forward slash notation for scope (e.g., `planner/mast_transition`, `detection/types`)
   - Uses appropriate commit types (fix, feat, docs, refactor, test, style, perf, build, ci)
   - Subject line: Brief (4-8 words), action-oriented, factual description
   - Body (when needed): Terse but complete explanation of what was done
   - Bullet points (for complex changes): Start with action verbs, technical specifics only
   - Optional footers: `Bug: <ticket>` and/or `Test: <command>` when applicable
   - Does NOT include "🤖 Generated with Claude Code" or "Co-Authored-By: Claude" footers
8. **Create the commit** using the proper format from the git message template

## Commit Message Style Guidelines

**Structure**: `<type>(<scope>): <brief description>`

**Subject Line**:

- Brief (4-8 words), action-oriented, factual
- Examples: "Fix compilation errors", "Add design document", "Refactor API with context struct"

**Body** (when needed):

- **Simple changes**: Single line explanation only
- **Complex changes**: Paragraph + bullet points for technical specifics
- Action-oriented language: "Introduces", "Implements", "Updates", "Replaces"
- Technical focus: what was built/changed, not why or benefits

**Bullet Points** (for complex changes):

- Start with action verbs: "Introduce", "Change", "Replace", "Add"
- Technical specifics without justification
- No sub-bullets or extensive detail

**Examples**:

- `fix(planner/mast_transition): Fix compilation errors`
- `refactor(planner/safe_travel): Update API`
- `docs(planner/mast_transitions): Add design document for refactoring`

**Optional Footers**: `Bug: <ticket>`, `Test: <command>`

**Do not output anything other than the git commit.**
If there are no changes to commit, inform the user that the working directory is clean.

