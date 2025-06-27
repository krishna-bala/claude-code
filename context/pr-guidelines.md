# Pull Request Guidelines

Context for creating well-structured pull requests.

## PR Creation Process

### Before Creating PR
1. Ensure branch follows naming convention: `krishna.<context>.<description>`
2. Review all commits in branch
3. Run tests and linting
4. Update documentation if needed

### PR Title Format
```
<type>(<scope>): <brief description>
```
Same types as commit messages (feat, fix, docs, etc.)

## PR Description Template

```markdown
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
```

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

## PR Best Practices

### Size and Scope
- Keep PRs focused and small
- One feature/fix per PR
- Split large changes into multiple PRs
- Atomic commits within PR

### Communication
- Respond to reviews promptly
- Explain non-obvious decisions
- Link to relevant discussions
- Update PR description as needed

### Review Etiquette
- Be constructive and respectful
- Explain reasoning for changes
- Acknowledge feedback
- Request re-review after changes

## Branch Management

### After PR Approval
1. Squash commits if needed
2. Ensure CI passes
3. Update branch with main if needed
4. Delete branch after merge

## Related Resources
- @context/code-review.md for review standards
- @commands/git-pr-description.md for PR workflow
- Project-specific PR templates in .claude/