# GitHub CLI (gh) Reference

Context for retrieving information from GitHub repositories using the GitHub CLI.

## Quick Reference

- **Primary Use**: Fetch PR context, issue details, CI status, and review history
- **Installation**: `brew install gh` or see [GitHub CLI docs](https://cli.github.com/manual/)
- **Authentication**: Run `gh auth login` before first use

## Pull Request Operations

### PR Context and Metadata

```bash
# Get PR overview with metadata
gh pr view 123 --json title,body,headRefName,baseRefName,state,author,reviews

# Check CI/build status
gh pr checks 123

# View PR diff
gh pr diff 123

# Get PR comments and review history
gh pr view 123 --comments

# List all PRs with status
gh pr list --state all --json number,title,state,author,createdAt
```

### PR Review Workflow

```bash
# Complete PR context for review
gh pr view $PR_NUMBER --json title,body,headRefName,baseRefName,state,author,reviews,statusCheckRollup,files

# Check specific check status
gh pr checks $PR_NUMBER --json state,conclusion,name,detailsUrl
```

## Issue Operations

```bash
# Get issue details
gh issue view 123 --json title,body,state,author,comments,labels

# List issues with filters
gh issue list --state open --label bug --json number,title,state

# Search for related issues
gh issue list --search "authentication error"

# Find PRs that fix an issue
gh pr list --search "fixes #123" --json number,title,state
```

## Repository Information

```bash
# Repository overview
gh repo view --json name,description,defaultBranch,topics,languages

# Check workflow/action status
gh run list --limit 10

# View specific workflow run
gh run view <run-id>

# Clone repository
gh repo clone owner/repo
```

## Advanced Patterns

### Extract Linked Issues from PR

```bash
# Get first issue number from PR body
gh pr view $PR_NUMBER --json body | jq -r '.body' | grep -o '#[0-9]\+' | head -1 | cut -c2-

# Then fetch that issue
gh issue view $(gh pr view $PR_NUMBER --json body | jq -r '.body' | grep -o '#[0-9]\+' | head -1 | cut -c2-)
```

### Comprehensive Review Context

```bash
# Fetch PR with all context
gh pr view $PR_NUMBER --json title,body,headRefName,baseRefName,state,reviews,statusCheckRollup

# Get linked issue details
ISSUE_NUM=$(gh pr view $PR_NUMBER --json body -q '.body' | grep -o '#[0-9]\+' | head -1 | cut -c2-)
[[ -n "$ISSUE_NUM" ]] && gh issue view $ISSUE_NUM
```

## Common Use Cases

### Code Review Preparation

1. Fetch PR metadata and description
2. Check CI/build status
3. Review linked issues for context
4. Examine previous review comments

### Issue Investigation

1. Get issue details and comments
2. Find related PRs
3. Check issue labels and assignees
4. Review issue history

## Best Practices

- Always check authentication status: `gh auth status`
- Use `--json` flag for structured output
- Combine with `jq` for parsing JSON responses
- Cache results to avoid API rate limits
- Handle private repositories appropriately

## Error Handling

```bash
# Check if gh is installed
command -v gh >/dev/null 2>&1 || echo "gh not installed"

# Verify authentication
gh auth status >/dev/null 2>&1 || gh auth login

# Check repository access
gh repo view >/dev/null 2>&1 || echo "No repository access"
```
