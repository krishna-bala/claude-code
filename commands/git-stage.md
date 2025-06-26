# Interactive Git Staging

Interactive file staging for selective commits:

1. **Check git status** to see all staged and unstaged changes
2. **Show git diff** for unstaged changes and **git diff --staged** for staged changes  
3. **Present the changes to the user** by listing:
   - Currently staged files (if any)
   - Unstaged modified files (if any)
   - Untracked files (if any)
4. **Ask the user** which specific files or changes should be staged
5. **Stage the requested files** using `git add` for the files the user specified
6. **Confirm staging** by showing final `git status`

Focus solely on staging files - do not create commits. This prepares changes for `/git-commit`.