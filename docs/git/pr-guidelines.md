# Pull Request Guidelines

Context for creating well-structured pull requests.

## PR Creation Process

### Before Creating PR

1. Ensure branch follows naming convention: `krishna.<context>.<description>`
2. Review all commits in branch
3. Run tests and linting
4. Update documentation if needed
5. **Check for linked issues** using `gh issue list` or `glab issue list`

<pr-description-template>

# [PR Title based on commit or issue]

## What?

What is the code in this PR accomplishing?

## Why?

Why does the work in this PR need to be done?

## Testing Requirement(s)

What are the testing requirements for you to feel good about this code getting merged?

## Ticket Reference(s)

- [ISSUE-ID]
- [OTHER-ISSUE-ID]

## Extra Info

Screenshots, random changes you want to call out, links, context, what's next, etc...

Closes [ISSUE-ID]

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

## Branch Management

### After PR Approval

1. Squash commits if needed
2. Ensure CI passes
3. Update branch with main if needed
4. Delete branch after merge

## Related Resources

- Code review standards
- GitHub CLI (gh) and GitLab CLI (glab) documentation
- Commit message standards
- Project-specific PR templates in .claude/
