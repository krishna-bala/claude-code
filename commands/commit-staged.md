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

Commit Message Guidelines

Keep it concise - focus on the essential what, not the why or how:

✅ Good - Brief, action-oriented points:

- What changed (rename, fix, add, remove, update)
- Where it changed (which key components)
- Any breaking changes or important behavioral shifts

❌ Avoid - Verbose details:

- Implementation explanations
- Technical justifications
- Details that are obvious from the diff
- Redundant background context

Key principle:
The commit message should help someone quickly understand what changed when scanning git history. The diff
shows the how, the code comments explain the why.

Keep bullets short and scannable - assume the reader can look at the diff for specifics if needed.

**Do not output anything other than the git commit.**
