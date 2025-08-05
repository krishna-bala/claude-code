Generate structured pull request descriptions with automated context analysis and issue linking.

---

Create comprehensive PR documentation by analyzing branch changes, detecting linked issues, and generating titles and descriptions that follow established conventions.
Save the PR documentation to `<identifier>-pr-description.md`.
Optionally include context after the command like `/generate-pr This PR adds dark mode support to the dashboard` to supplement the automated analysis.

- **Documentation**: @/home/krishna/.claude/docs/git/pr-guidelines.md (templates and conventions)
- **Standards**: @/home/krishna/.claude/docs/git/commit-guidelines.md (title format)
- **Review**: @/home/krishna/.claude/docs/git/code-review.md (checklist items)

## Process

1. **Detect platform** (GitHub/GitLab) and base branch
2. **Analyze branch changes** using `git diff` and `git log`
3. **Auto-detect linked issues** from commit messages and branch name
4. **Fetch issue details** using gh/glab CLI for context
5. **Generate PR title** from commits or issue title
6. **Create description** with automated summary from changes
7. **Check CI status** to ensure build readiness
8. **Apply template** from @docs/git/pr-guidelines.md

## Automated Detection

### Issue Linking

```bash
# Extract issue numbers from branch name and commits
git log --oneline base..HEAD | grep -oE '#[0-9]+' | sort -u

# Fetch issue details (GitHub)
gh issue view $ISSUE_NUMBER --json title,body,labels

# Fetch issue details (GitLab)
glab issue show $ISSUE_NUMBER --json
```

### Title Generation

1. Check if single commit → Use commit message
2. Check if linked issue → Use issue title with type prefix
3. Multiple commits → Analyze common scope and summarize
4. User-provided context → Incorporate into generated title

## Output Example

```markdown
## Generated PR Documentation

**Title**: feat(auth): implement OAuth2 integration

**Auto-detected context**:

- Base branch: main
- 5 commits, 12 files changed
- Linked issue: #234 "Add OAuth2 support"
- CI Status: ✓ All checks passing

**Description**:

[Content generated from @docs/git/pr-guidelines.md template with:

- Summary synthesized from commits and issue
- Changes extracted from git diff analysis
- Testing checklist based on changed files
- Auto-linked issues from commits]

**Review checklist**: [Applied from template]
```

## Enhanced Features

### Smart Summary Generation

- Analyzes actual code changes to create meaningful summaries
- Groups related changes by module/component
- Highlights breaking changes or API modifications
- Extracts key metrics (files changed, lines added/removed)

### Issue Context Integration

- Automatically fetches issue title and description
- Includes issue labels for context
- Links related issues mentioned in commits
- Preserves issue formatting and references

## Examples

### With context provided

```
/generate-pr This PR adds dark mode support to the dashboard
```

Analyzes branch, detects UI changes, includes dark mode context in summary, adds screenshot section

### Automatic analysis

```
/generate-pr
```

Detects issue #234 from branch name, fetches "Add OAuth2 support" issue, generates complete PR with OAuth context

### Multi-issue PR

```
/generate-pr
```

Finds fixes for #123, #124, generates consolidated PR description linking both issues

## Sub-agent Delegation

For complex PRs, consider using specialized agents:

- **@agent-code-explorer**: Deep analysis of large changesets
- **@agent-documentation-specialist**: Generate comprehensive docs for API changes
- **@agent-code-reviewer**: Pre-review before creating PR

## Platform Detection

```bash
# Auto-detect GitHub vs GitLab
if git remote -v | grep -q github.com; then
    PLATFORM="github"
    CLI="gh"
else
    PLATFORM="gitlab"
    CLI="glab"
fi
```
