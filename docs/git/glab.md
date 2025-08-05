# GitLab CLI (glab) Reference

Context for retrieving information from GitLab repositories using the GitLab CLI.

## Quick Reference

- **Primary Use**: Retrieve MR information, feedback, discussions,
  issue context, and pipeline status
- **Authentication**: Run `glab auth login` if required

## Merge Request Operations

### MR Context and Metadata

```bash
# Get MR overview
glab mr view 123 [-R group/namespace/repo] [--output json]
# Example:
# glab mr view 9421 -R foxrobotics/autonomy/foxbots --output json

# View MR diff
glab mr diff 123

# Get MR discussions and comments
glab mr view 123 -c -P 1000
# `-P 1000` sets number of items to list per page to an arbitrarily high limit
```

### Comprehensive Review Context

```bash
# Fetch MR and filter context with jq
glab mr view $MR_NUMBER --output json | jq -r '.title, .description, .source_branch, .target_branch, .state, .pipeline'
```

## Common Use Cases

### Code Review Preparation

1. Fetch MR metadata and description
2. Check pipeline status
3. Review linked issues for context
4. Examine previous discussions

### Pipeline Monitoring

1. Check current pipeline status
2. View failed job logs
3. Monitor pipeline progress
4. Retry failed pipelines

## Best Practices

- Always check authentication status: `glab auth status`
- Use `--output json` flag for structured output
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
glab repo view [group/namespace/repo] >/dev/null 2>&1 || echo "No repository access"
```

## Platform-Specific Notes

- GitLab uses "Merge Requests" (MRs) instead of "Pull Requests"
- Issues are tracked on Jira and can be referenced with `[<PROJ>-####]` format (e.g. `[AUTO-1234]`)
