# Repository Management

Context for retrieving information from GitHub and GitLab repositories using CLI tools.

## Quick Reference

- **GitHub CLI (gh)**: Fetch PR context, issue details, CI status, and review history
- **GitLab CLI (glab)**: Retrieve MR information, issue context, and pipeline status
- **Information Focus**: Pull repository metadata to enhance local development context
- **Primary Use**: Code review context, issue understanding, and repository exploration

## GitHub CLI (gh) Information Retrieval

### Pull Request Context

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

### Issue Context

```bash
# Get issue details
gh issue view 123 --json title,body,state,author,comments,labels

# List issues with filters
gh issue list --state open --label bug --json number,title,state

# Search for related issues
gh issue list --search "authentication error"
```

### Repository Information

```bash
# Repository overview
gh repo view --json name,description,defaultBranch,topics,languages

# Check workflow/action status
gh run list --limit 10

# View specific workflow run
gh run view <run-id>
```

## GitLab CLI (glab) Information Retrieval

### Merge Request Context

```bash
# Get MR overview
glab mr show 123 --json

# Check pipeline status
glab ci status --branch feature-branch

# View MR diff
glab mr diff 123

# Get MR discussions and comments
glab mr note list 123

# List all MRs
glab mr list --state all
```

### Issue Context

```bash
# Get issue details
glab issue show 123

# List issues with filters
glab issue list --state opened --label bug

# Search issues
glab issue list --search "authentication"
```

### Repository Information

```bash
# Repository overview
glab repo view

# Check pipeline status
glab ci status

# View pipeline jobs
glab ci view <pipeline-id>
```

## Common Information Retrieval Patterns

### Code Review Context Fetching

```bash
# GitHub PR review context
gh pr view $PR_NUMBER --json title,body,headRefName,baseRefName,state,reviews,statusCheckRollup
gh issue view $(gh pr view $PR_NUMBER --json body | jq -r '.body' | grep -o '#[0-9]\+' | head -1 | cut -c2-)

# GitLab MR review context
glab mr show $MR_NUMBER --json
glab issue show $(glab mr show $MR_NUMBER --json | jq -r '.description' | grep -o '#[0-9]\+' | head -1 | cut -c2-)
```

### Issue Context Understanding

```bash
# Get issue and related PRs (GitHub)
gh issue view 123 --json title,body,state,comments
gh pr list --search "fixes #123" --json number,title,state

# Get issue and related MRs (GitLab)
glab issue show 123
glab mr list --search "Closes #123"
```

### CI/Pipeline Status Checking

```bash
# GitHub workflow status
gh pr checks $PR_NUMBER --json state,conclusion,name,detailsUrl

# GitLab pipeline status
glab ci status --branch $BRANCH_NAME
```

## Context Triggers

**Load this spec when:**

- Working with PR numbers (`#123`, `PR #456`)
- GitHub/GitLab URLs in context
- Code review workflows
- Issue investigation tasks
- Repository exploration requests

**Common scenarios:**

- `/review PR #123` - Need PR context and linked issues
- Debugging with issue numbers - Need issue details and related PRs
- Understanding repository state - Need CI status and recent activity
- Code review preparation - Need PR metadata and review history

## Integration with Review Workflow

### Pre-Review Information Gathering

1. **Fetch PR/MR context** - Get description, linked issues, and metadata
2. **Check CI status** - Understand build/test results
3. **Review history** - See previous review comments and decisions
4. **Issue context** - Understand the problem being solved

### Platform-Specific Workflows

#### GitHub Review Context

```bash
# Complete PR context for review
gh pr view $PR_NUMBER --json title,body,headRefName,baseRefName,state,author,reviews,statusCheckRollup,files
```

#### GitLab Review Context

```bash
# Complete MR context for review
glab mr show $MR_NUMBER --json
glab ci status --branch $(glab mr show $MR_NUMBER --json | jq -r '.source_branch')
```

## Best Practices

### Information Retrieval Strategy

- **Always fetch PR/MR context** before code review
- **Check CI status** to understand build health
- **Review linked issues** to understand requirements
- **Examine previous reviews** for context and decisions

### Platform Detection

```bash
# Detect platform from remote URL
git remote get-url origin | grep -q github.com && echo "github" || echo "gitlab"
```

### Error Handling

- Check if gh/glab is installed and configured
- Verify repository access and permissions
- Handle private repositories appropriately
- Gracefully degrade when CLI tools unavailable

## Related Resources

- `pr-guidelines.md` - PR creation and review standards
- `commit-guidelines.md` - Commit message conventions
- `../memory-framework/architecture.md` - Context loading patterns
- External: [GitHub CLI Manual](https://cli.github.com/manual/)
- External: [GitLab CLI Documentation](https://docs.gitlab.com/ee/editor_extensions/gitlab_cli/)
