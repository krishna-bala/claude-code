# Session Load

Load/resume a previously ended development session to continue work.

## Usage

Reactivates a completed session allowing you to continue adding updates and progress tracking.

## Process

1. **List Available Sessions**

   - Scan `.claude/sessions/` for completed session files
   - Parse session metadata (name, date, focus, completion status)
   - Present sessions chronologically with summaries

2. **Session Selection**

   - If session name/pattern provided: match and load specific session
   - If no argument: show interactive list for user selection
   - Validate selected session file exists

3. **Reactivate Session**

   - Update `.claude/sessions/.current-session` with selected filename
   - Add reactivation entry to session Progress section
   - Capture current git state for context

4. **Add Reactivation Entry**

   ```markdown
   ### Session Reactivated - [Timestamp]

   **Elapsed since end**: [Time since session was ended]
   **Reactivated by**: [Current user context]

   **Current Git State**:

   - Branch: [current branch]
   - Latest commit: [commit hash and message]
   - Status: [clean/dirty with file count]

   **Reactivation reason**: Continuing work on [session focus]
   ```

5. **Show Session Context**
   - Display session goals and previous progress
   - Show available actions for continued work

## Context Loading

Loads:

- Target session file for reactivation
- Current git state for baseline update
- Session history for context

## Output Format

```markdown
## Session Reactivated ✅

**Session**: [Session name/timestamp]
**Originally**: [Original start] → [Original end]
**Reactivated**: [Current timestamp]
**File**: `.claude/sessions/[filename].md`

### Session Overview

- **Focus**: [Session focus area]
- **Original Duration**: [How long original session ran]
- **Time Since End**: [Gap between end and reactivation]

### Previous Goals

[List of session goals with completion status]

### Recent Progress

[Last 2-3 updates from original session]

### Available Actions

- `/session-update [notes]` - Continue adding progress
- `/session-current` - View full session status
- `/session-end` - End session again with new summary

### 💡 Continuation Tips

- Reference previous work when updating
- Build on previous accomplishments
- Document why you resumed the session
```

## Session Selection Examples

```bash
# Load specific session by name pattern
/session-load auth-refactor
# Finds: auth-refactor-20250627-143022.md

# Load specific session by full filename
/session-load command-consolidation-20250626-202056

# Interactive selection
/session-load
# Shows list of all sessions to choose from
```

## No Sessions Response

```markdown
## No Sessions Available

No completed sessions found to reactivate.

### 🚀 Available Actions

- `/session-start [name]` - Start a new session
- `/session-list` - View all sessions (if any exist)

### 💡 About Session Loading

Session loading allows you to:

- Continue work across multiple Claude conversations
- Build upon previous session context
- Maintain development continuity
- Resume work on long-running features
```

## Related Commands

- `/session-start` - Start new session
- `/session-current` - View active session status
- `/session-end` - End current session
- `/session-list` - List all sessions

