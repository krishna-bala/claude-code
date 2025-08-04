# GitLab CLI (glab) Reference

Context for retrieving information from GitLab repositories using the GitLab CLI.

## Quick Reference

- **Primary Use**: Retrieve MR information, issue context, and pipeline status
- **Installation**: `brew install glab` or see [GitLab CLI docs](https://docs.gitlab.com/ee/editor_extensions/gitlab_cli/)
- **Authentication**: Run `glab auth login` before first use

## Merge Request Operations

### MR Context and Metadata

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

### MR Review Workflow

```bash
# Complete MR context for review
glab mr show $MR_NUMBER --json

# Check pipeline for MR branch
glab ci status --branch $(glab mr show $MR_NUMBER --json | jq -r '.source_branch')
```

## Issue Operations

```bash
# Get issue details
glab issue show 123

# List issues with filters
glab issue list --state opened --label bug

# Search issues
glab issue list --search "authentication"

# Find MRs that close an issue
glab mr list --search "Closes #123"
```

## Repository Information

```bash
# Repository overview
glab repo view

# Check pipeline status
glab ci status

# View pipeline jobs
glab ci view <pipeline-id>

# Clone repository
glab repo clone owner/repo
```

## Pipeline/CI Operations

```bash
# List recent pipelines
glab ci list

# View specific pipeline
glab ci view <pipeline-id>

# Check pipeline status for branch
glab ci status --branch main

# View job logs
glab ci trace <job-id>

# Retry failed pipeline
glab ci retry <pipeline-id>
```

## Advanced Patterns

### Extract Linked Issues from MR

```bash
# Get issue references from MR description
glab mr show $MR_NUMBER --json | jq -r '.description' | grep -o '#[0-9]\+' | head -1 | cut -c2-

# Then fetch that issue
glab issue show $(glab mr show $MR_NUMBER --json | jq -r '.description' | grep -o '#[0-9]\+' | head -1 | cut -c2-)
```

### Comprehensive Review Context

```bash
# Fetch MR with all context
MR_DATA=$(glab mr show $MR_NUMBER --json)
echo "$MR_DATA" | jq -r '.title, .description, .source_branch, .target_branch, .state'

# Get linked issue details
ISSUE_NUM=$(echo "$MR_DATA" | jq -r '.description' | grep -o '#[0-9]\+' | head -1 | cut -c2-)
[[ -n "$ISSUE_NUM" ]] && glab issue show $ISSUE_NUM
```

## Common Use Cases

### Code Review Preparation

1. Fetch MR metadata and description
2. Check pipeline status
3. Review linked issues for context
4. Examine previous discussions

### Issue Investigation

1. Get issue details and comments
2. Find related MRs
3. Check issue labels and assignees
4. Review issue history

### Pipeline Monitoring

1. Check current pipeline status
2. View failed job logs
3. Monitor pipeline progress
4. Retry failed pipelines

## Best Practices

- Always check authentication status: `glab auth status`
- Use `--json` flag for structured output
- Combine with `jq` for parsing JSON responses
- Handle private repositories appropriately
- Monitor API rate limits

## Error Handling

```bash
# Check if glab is installed
command -v glab >/dev/null 2>&1 || echo "glab not installed"

# Verify authentication
glab auth status >/dev/null 2>&1 || glab auth login

# Check repository access
glab repo view >/dev/null 2>&1 || echo "No repository access"
```

## Platform-Specific Notes

- GitLab uses "Merge Requests" (MRs) instead of "Pull Requests"
- Issues can be referenced with `#123` format
- Pipeline status is integral to MR workflow
- Supports both GitLab.com and self-hosted instances
