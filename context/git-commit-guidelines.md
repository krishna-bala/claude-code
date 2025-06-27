# Git Commit Guidelines

Context for making consistent, well-structured git commits.

## Commit Message Format

### Structure
```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types
- **feat**: New feature
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style changes (formatting, missing semicolons, etc.)
- **refactor**: Code refactoring without changing functionality
- **test**: Adding or modifying tests
- **chore**: Maintenance tasks, dependency updates

### Rules
1. Subject line: 50 characters max, imperative mood
2. Body: Wrap at 72 characters
3. Use present tense ("add" not "added")
4. No period at end of subject line
5. Separate subject from body with blank line

## Commit Process

### Before Committing
1. Review changes: `git diff --staged`
2. Ensure tests pass
3. Check for lint issues
4. Verify no sensitive data

### Making Commits
```bash
# Stage specific changes
git add -p

# Commit with message
git commit -m "type(scope): subject"

# Or use commit template
git commit
```

### Special Instructions
- Use `.gitmessage` template at root level
- Do NOT add "🤖 Generated with Claude Code" 
- Do NOT add "Co-Authored-By: Claude"
- Follow project-specific conventions if they exist

## Examples

### Good Commits
```
feat(auth): add OAuth2 login support

Implement Google and GitHub OAuth providers with proper
error handling and token refresh logic.

Closes #123
```

```
fix(api): handle null response in user endpoint

The user endpoint was crashing when database returned
null. Added proper null checking and error response.
```

### Bad Commits
```
Fixed stuff           # Too vague
ADDED NEW FEATURE    # Wrong case, no type
update code.         # Period, not imperative
```

## Related
- Git Conventions in main CLAUDE.md
- @commands/git-commit.md for commit workflow
- Project-specific git standards in .claude/specs/