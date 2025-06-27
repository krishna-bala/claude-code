# Session Start

Start a new development session with comprehensive tracking and documentation.

## Usage

Creates a new session file with optional descriptive name and sets up tracking for the development work ahead.

## Process

1. **Get Current Time**
   - Use `mcp__time__get_current_time` to get accurate timestamp
   - Format: YYYY-MM-DD-HHMM for filename
   - Include timezone information in session file

2. **Create Session File**
   - Location: `.claude/sessions/YYYY-MM-DD-HHMM-[name].md`
   - If no name provided: `.claude/sessions/YYYY-MM-DD-HHMM.md`
   - Create sessions directory if it doesn't exist

3. **Session File Structure**
   ```markdown
   # Development Session - [Date Time] - [Name]
   
   **Started**: [Full timestamp with timezone]
   **Focus**: [Session name or "General Development"]
   
   ## Goals
   [Prompt user for session goals if not clear from context]
   
   ## Progress
   [Empty section ready for updates]
   
   ## Git State at Start
   - Branch: [current branch]
   - Last commit: [latest commit hash and message]
   - Status: [clean/dirty with file count]
   
   ## Session Notes
   [Space for ongoing notes]
   ```

4. **Update Session Tracker**
   - Create/update `.claude/sessions/.current-session`
   - Store the session filename for other commands

5. **Confirm Creation**
   - Show session name and file path
   - Remind about available commands

## Context Loading

Loads:
- `@templates/session-file.md` - Session file template
- Current git state for baseline

## Output Format

```markdown
## Session Started ✅

**Session**: [Name/Timestamp]
**File**: `.claude/sessions/[filename].md`
**Started**: [Full timestamp]

### Available Commands
- `/session-update [notes]` - Add progress updates
- `/session-current` - View current session status  
- `/session-end` - End session with summary

### Goals
[List goals or prompt user to define them]
```

## Related Commands

- `/session-update` - Update session progress
- `/session-current` - View current session
- `/session-end` - End and summarize session