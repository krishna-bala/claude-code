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
   - Follows the `.gitmessage` template format: `<type>[optional scope]: <description>`
   - Uses appropriate commit types (fix, feat, docs, refactor, test, style, perf, build, ci)
   - Explains the "why" not just the "what"
   - Is concise but descriptive
   - Does NOT include "🤖 Generated with Claude Code" or "Co-Authored-By: Claude" footers
8. **Create the commit** using the proper format from the git message template

If there are no changes to commit, inform the user that the working directory is clean.