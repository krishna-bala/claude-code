# Session Current

Show the status and details of the currently active development session.

## Usage

Displays information about the active session including duration, recent updates, and available actions.

## Process

1. **Check for Active Session**
   - Read `.claude/sessions/.current-session` to find active session filename
   - If no active session, inform user and suggest starting one
   - Verify session file exists

2. **Load Session Information**
   - Parse session file for key details
   - Use `mcp__time__get_current_time` to calculate current duration
   - Get recent updates and progress

3. **Analyze Current State**
   - Count total updates made
   - Review recent git changes
   - Check todo list progress
   - Identify last activity timestamp

4. **Present Session Status**
   - Session name and start time
   - Current duration
   - Recent activity summary
   - Available next actions

## Context Loading

Loads:
- Active session file content
- Current git status
- Todo list state (if available)

## Output Format

```markdown
## Current Session Status

### 📋 Session Details
- **Name**: [Session name or timestamp]
- **Started**: [Start timestamp with timezone]
- **Duration**: [Elapsed time]
- **File**: `.claude/sessions/[filename].md`

### 📊 Progress Summary
- **Updates**: [Number of updates made]
- **Last Update**: [Time of last update]
- **Git Changes**: [Current pending changes count]
- **Todo Progress**: [completed/in-progress/pending counts]

### 🎯 Current Goals
[List of session goals from session file]

### 📝 Recent Activity
[Last 2-3 updates with timestamps]

### 🚀 Available Actions
- `/session-update [notes]` - Add progress update
- `/session-end` - End session with summary
- `/session-list` - View all sessions

### 💡 Quick Tips
- Update regularly to maintain context
- Include git changes and todo progress
- End session when switching focus areas
```

## No Active Session Response

```markdown
## No Active Session

Currently no development session is active.

### 🚀 Start a Session
- `/session-start [name]` - Begin new session with optional name
- `/session-start` - Begin unnamed session

### 📚 View Past Sessions  
- `/session-list` - See all previous sessions

### 💡 Why Use Sessions?
- Maintain context across multiple Claude conversations
- Document development progress and decisions
- Create knowledge base for future work
- Track accomplishments and lessons learned
```

## Related Commands

- `/session-start` - Start a new session
- `/session-update` - Update current session
- `/session-end` - End current session
- `/session-list` - List all sessions