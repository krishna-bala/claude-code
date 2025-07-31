Generate structured pull request descriptions and checklists with comprehensive documentation.

---

Create comprehensive PR documentation with titles, descriptions, and review checklists. Include any additional context after the command like `/git-pr This PR adds dark mode support to the dashboard`. Generates complete pull request documentation following established conventions.

## Command Type

workflow - [Complexity: medium]

## Tool Usage

- **Primary**: Bash (git operations), TodoRead (check existing tasks), TodoWrite (track PR process)
- **Secondary**: Read (review changes), Grep (search patterns in diffs), WebFetch (check GitHub issues)
- **Avoid**: Edit, Write (PR creation only, no code changes)

## Context

- **Files**: @docs/git/pr-guidelines.md, @docs/git/commit-guidelines.md, @docs/git/code-review.md
- **Patterns**: PR documentation standards, review checklists, conventional commit format
- **Dependencies**: Branch changes, commit history, related issues

**Note**: This command benefits from focused execution. Consider using with Task tool for sub-agent delegation.

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

## Output

Generates structured pull request description with title, summary, and review checklist following established conventions.

<output-template>
## PR Description Generated

### Title

<type>(<scope>): <brief description>

### Description

## Summary

[Brief description of changes]

## Changes

- [List key changes and rationale]

## Testing

- [ ] Unit tests pass
- [ ] Integration tests pass
- [ ] Manual testing completed

## Related Issues

Fixes #[issue-number]

### Review Checklist

- **Code quality items**: [Relevant standards checks]
- **Documentation items**: [Required updates]
- **Testing items**: [Coverage and validation]

</output-template>

## Validation

- PR title follows conventional format
- Description includes all required sections
- Review checklist is comprehensive
- Related issues are properly referenced
- Content is clear and actionable

## Examples

<example-1>
**Input**: `/generate-pr This PR adds dark mode support to the dashboard`
**Output**: Generates structured PR description with dark mode context and relevant testing checklist
</example-1>

<example-2>
**Input**: `/generate-pr` (analyzes current branch)
**Output**: Analyzes branch changes and generates appropriate PR description automatically
</example-2>

## Best Practices

- Keep PRs focused and small
- One feature/fix per PR
- Atomic commits within PR
- Clear, descriptive titles
- Comprehensive description
- Link to relevant discussions
