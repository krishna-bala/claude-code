# Pull Request Guidelines

Context for creating well-structured pull requests.

## PR Creation Process

### Before Creating PR

1. Ensure branch follows naming convention: `krishna.<context>.<description>`
2. Review all commits in branch
3. Run tests and linting
4. Update documentation if needed
5. **Check for linked issues** using `gh issue list` or `glab issue list`

### PR Title Format

```
<type>(<scope>): <brief description>
```

Same types as commit messages (feat, fix, docs, etc.)

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

## Repository Context Integration

### Pre-Review Information Gathering

```bash
# GitHub - Get PR context for review
gh pr view 123 --json title,body,headRefName,baseRefName,state,reviews,statusCheckRollup

# GitLab - Get MR context for review
glab mr show 123 --json
```

### Understanding Linked Issues

```bash
# GitHub - Find linked issues
gh issue view $(gh pr view 123 --json body | jq -r '.body' | grep -o '#[0-9]\+' | head -1 | cut -c2-)

# GitLab - Find linked issues
glab issue show $(glab mr show 123 --json | jq -r '.description' | grep -o '#[0-9]\+' | head -1 | cut -c2-)
```

### CI Status Checking

```bash
# GitHub - Check build status
gh pr checks 123

# GitLab - Check pipeline status
glab ci status --branch feature-branch
```

## Related Resources

- `code-review.md` for review standards
- `repository-management.md` for CLI integration patterns
- `commit-guidelines.md` for commit standards
- Project-specific PR templates in .claude/
