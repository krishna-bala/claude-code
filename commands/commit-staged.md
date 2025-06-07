# Commit Staged Changes

Create a git commit for the currently staged changes following these steps:

1. **Check git status** to see all staged and unstaged changes
2. **Check git diff --staged** to review what will be committed
3. **Check recent commit history** with `git log --oneline -10` to understand the commit message style
4. **Analyze the staged changes** and write a clear, meaningful commit message that:
   - Follows the `.gitmessage` template format: `<type>[optional scope]: <description>`
   - Uses appropriate commit types (fix, feat, docs, refactor, test, style, perf, build, ci)
   - Explains the "why" not just the "what"
   - Is concise but descriptive
   - Does NOT include "Generated with Claude Code" or "Co-Authored-By: Claude" footers
5. **Create the commit** using the proper format from the git message template

Only commit changes that are currently staged. Do not stage additional files unless specifically requested.

**Do not output anything other than the git commit.**

