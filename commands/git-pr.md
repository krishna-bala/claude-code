## Generate structured pull request descriptions and checklists with comprehensive documentation.

Create comprehensive PR documentation with titles, descriptions, and review checklists. Include any additional context after the command like `/git-pr This PR adds dark mode support to the dashboard`.

**Read context from:**

- `~/.claude/context/pr-guidelines.md`
- `~/.claude/context/git-commit-guidelines.md`

## Process

1. **Analyze branch changes** from main/base branch
2. **Review commit history** to understand the scope of changes
3. **Generate PR title** following conventional format
4. **Create structured description** with summary, changes, and testing
5. **Include relevant checklists** for review readiness

## PR Title Format

```
<type>(<scope>): <brief description>
```

Same types as commit messages: `feat`, `fix`, `docs`, `refactor`, `test`, `style`, `perf`, `build`, `ci`, `chore`

## PR Description Template

<pr-description-template>
## Summary

Brief description of changes (2-3 sentences)

## Changes

- List key changes
- Focus on "what" and "why"
- Reference related issues

## Testing

- [ ] Unit tests pass
- [ ] Integration tests pass
- [ ] Manual testing completed

## Screenshots (if applicable)

Add screenshots for UI changes

## Related Issues

Fixes #123
Related to #456
</pr-description-template>

## Review Readiness Checklist

### Code Quality

- [ ] Code follows project standards
- [ ] No commented-out code
- [ ] Proper error handling
- [ ] Adequate test coverage

### Documentation

- [ ] Code comments where needed
- [ ] README updated if required
- [ ] API docs updated
- [ ] CHANGELOG entry added

### Testing

- [ ] All tests pass
- [ ] New tests for new features
- [ ] Edge cases covered
- [ ] No breaking changes (or documented)

## Best Practices

- Keep PRs focused and small
- One feature/fix per PR
- Atomic commits within PR
- Clear, descriptive titles
- Comprehensive description
- Link to relevant discussions
