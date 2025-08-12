# Working with Foxbots Jira

## Overview

Foxbots uses Atlassian Jira Cloud at `foxbots.atlassian.net`. Two main methods for interaction:

1. `acli` - Atlassian CLI tool (limited functionality)
2. Jira REST API - Full access to all features

## Using acli

### Installation Check

```bash
which acli  # Should return /usr/bin/acli
```

### View Work Items

```bash
# View a ticket
acli jira workitem view ESI-495

# Note: acli CANNOT retrieve comments on work items
```

### Create Work Items

```bash
# Create from file (summary is first line, rest is description)
acli jira workitem create \
  --project AUTO \
  --type "Bug" \
  --from-file /tmp/ticket.txt \
  --assignee "@me"

# Create with inline summary and description
acli jira workitem create \
  --project AUTO \
  --type "Bug" \
  --summary "Title here" \
  --description "Description here" \
  --assignee "@me"

# Important: Don't use both --summary and --from-file together
```

### Limitations

- Cannot retrieve comments
- Limited to basic CRUD operations

## Using Jira REST API

### Authentication

```bash
# Get API key from password manager
API_KEY=$(pass show api-keys/ATLASSIAN_API_KEY)

# Use with curl
curl -u krishna@foxbots.com:$API_KEY \
  -H "Content-Type: application/json" \
  "https://foxbots.atlassian.net/rest/api/2/issue/ESI-495"
```

### Get Comments

**Important for Claude Code**: Command substitution with `$(pass show ...)` doesn't work through the Bash tool due to escaping issues. Always use the helper script.

#### Using Helper Script (Required for Claude Code)

```bash
# Script located at ~/.claude/scripts/jira-comments.sh
~/.claude/scripts/jira-comments.sh ESI-495
```

#### Manual Method (For Human Use Only)

The following commands work when typed directly in a terminal but NOT through Claude Code:

```bash
# First get the API key
API_KEY=$(pass show api-keys/ATLASSIAN_API_KEY)

# Then use it with curl
curl -s -u krishna@foxbots.com:$API_KEY \
  -H "Content-Type: application/json" \
  "https://foxbots.atlassian.net/rest/api/2/issue/ESI-495/comment"

# Parse comments with jq for readable output
curl -s -u krishna@foxbots.com:$API_KEY \
  -H "Content-Type: application/json" \
  "https://foxbots.atlassian.net/rest/api/2/issue/ESI-495/comment" | \
  jq -r '.comments[] | "[\(.author.displayName)] \(.created | split("T")[0]):\n\(.body)\n"'
```

## Common Workflows

### Creating Tickets from Other Tickets

1. Use REST API to get original ticket details and comments
2. Analyze and summarize the information
3. Create new ticket with `acli jira workitem create`
4. Reference original ticket in description

### Project Keys

- `AUTO` - Automation/robotics bugs and features
- `ESI` - Engineering Support/Incidents
- Other projects available via `acli jira project list`

## Best Practices

1. Always use `@me` for self-assignment
2. Don't use labels unless specifically needed (they may not exist)
3. Include references to related tickets in descriptions
4. Use REST API for complex queries, acli for simple creates/updates
5. Store API key securely in password manager (`pass`)

## Ticket Content Format

When creating tickets from files:

- First line: Summary/title
- Rest of file: Description (supports markdown)
- Use `##` headers for organization
- Include "References" section for related tickets
- Include "Testing Requirements" when applicable
