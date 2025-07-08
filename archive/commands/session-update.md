# Session Update

Add timestamped progress updates to the current development session.

## Usage

Updates the active session with progress notes, git changes, and todo status. Can provide custom notes or auto-generate summary.

## Process

1. **Check Active Session**

   - Read `.claude/sessions/.current-session` for active session filename
   - If no active session, prompt to start with `/session-start`
   - Verify session file exists

2. **Get Current Time**

   - Use `mcp__time__get_current_time` for accurate timestamp
   - Calculate elapsed time since last update

3. **Gather Context**

   - Git status: files added/modified/deleted (`git status --porcelain`)
   - Current branch and latest commit
   - Todo list status (if using TodoRead)
   - Recent file modifications

4. **Create Update Entry**

   ```markdown
   ### Update - [Timestamp]

   **Elapsed**: [Time since last update]
   **Summary**: [User notes or auto-generated summary]

   **Git Changes**:

   - Modified: [list of modified files]
   - Added: [list of added files]
   - Deleted: [list of deleted files]
   - Branch: [current branch] (commit: [hash])

   **Todo Progress**: [completed/in-progress/pending counts]

   - ✓ [Recently completed tasks]
   - ⏳ [In-progress tasks]
   - 📋 [New pending tasks]

   **Notes**: [Additional details about changes, issues, solutions]
   ```

5. **Append to Session File**
   - Add update to Progress section
   - Maintain chronological order
   - Include context for future reference

## Auto-Summary Generation

If no notes provided, generate summary based on:

- Recent git changes and commit messages
- File modifications and their types
- Todo list changes
- Time elapsed since last update

## Context Loading

Automatically gathers:

- Current git state
- Todo list status (if available)
- Recent file activity
- Session context

## Output Format

```markdown
## Session Updated ✅

**Session**: [Session name]
**Update #**: [Update number]
**Time**: [Current timestamp]
**Elapsed**: [Time since last update]

### Summary

[Brief summary of what was updated]

### Next Actions

- Continue with `/session-update` for more progress
- End session with `/session-end` when complete
```

## Examples

### With Custom Notes

```
/session-update Implemented OAuth authentication with Google provider
```

### Auto-Generated

```
/session-update
# Analyzes recent changes and generates summary automatically
```

## Related Commands

- `/session-start` - Start a new session
- `/session-current` - View current session status
- `/session-end` - End session with summary
