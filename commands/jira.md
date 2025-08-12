Interact with Foxbots Jira for ticket operations including retrieval, creation, updates, and analysis.

---

Provides comprehensive Jira integration for the Foxbots ticket system. Handles ticket context retrieval, creation of new tickets, updates to existing tickets, ticket linking, searching, and analysis of ticket discussions. The exact behavior depends on the user's instructions - whether they want to fetch information, create tickets, update status, or analyze patterns across tickets.

## Process

1. **Parse Intent**: Determine the operation type from user instructions

   - Fetch: Retrieve ticket details and comments
   - Create: Generate new tickets with appropriate metadata
   - Update: Modify existing ticket fields or add comments
   - Search: Find tickets by criteria
   - Analyze: Extract patterns, summaries, or action items
   - Link: Connect related tickets

2. **Execute Operation**:

   - For fetching comments: Use `~/.claude/scripts/jira-comments.sh TICKET-ID`
   - For ticket creation: Use `acli jira workitem create` with appropriate flags
   - For viewing tickets: Use `acli jira workitem view TICKET-ID`
   - For complex queries: Reference REST API patterns in documentation

3. **Format Response**: Present information based on the operation
   - Comments: Chronological discussion format
   - Creation: Return ticket URL and ID
   - Analysis: Structured summary with key findings

## Examples

**Fetch ticket context**:

```
/jira Get the details and comments from ESI-495
```

Retrieves ticket summary and all comments using the helper script

**Create related ticket**:

```
/jira Create an AUTO ticket based on the findings in ESI-495
```

Analyzes ESI-495 context and creates appropriate bug/feature ticket

**Search and analyze**:

```
/jira Find all tickets related to mast control issues in the last month
```

Searches for relevant tickets and provides summary

**Extract action items**:

```
/jira What are the action items from the discussion in AUTO-5554?
```

Parses comments to identify actionable tasks

## Context Integration

- Jira API documentation and workflows: @/home/krishna/.claude/docs/tools/jira-foxbots.md
- Helper script for comments: `~/.claude/scripts/jira-comments.sh`
- Available project keys: AUTO (bugs/features), ESI (incidents)

## Sub-agent Delegation

For complex ticket operations:

- Use @agent-code-archaeologist when tickets reference code changes needing analysis
- Use @agent-documentation-specialist when creating tickets requiring detailed technical documentation
- Use @agent-tech-lead-orchestrator when tickets involve multi-component changes
