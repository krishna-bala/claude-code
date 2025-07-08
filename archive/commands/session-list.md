# Session List

Display all development sessions with summaries and quick access information.

## Usage

Shows a chronological list of all session files with key details for easy reference and context loading.

## Process

1. **Scan Sessions Directory**
   - Check `.claude/sessions/` directory for session files
   - If directory doesn't exist, inform user about session system
   - Filter for `.md` files with session naming pattern

2. **Parse Session Files**
   - Extract session name, start time, and goals from each file
   - Identify completed vs incomplete sessions
   - Determine session duration where available
   - Check for current active session

3. **Sort and Categorize**
   - Sort by date/time (newest first)
   - Highlight active session if any
   - Group by time periods (today, this week, this month, older)

4. **Generate Summaries**
   - Extract key accomplishments from each session
   - Show session focus areas
   - Include relevant git changes count

## Context Loading

Analyzes:
- All session files in `.claude/sessions/`
- Current active session status
- Session metadata and summaries

## Output Format

```markdown
## Development Sessions

### 📍 Current Session
[If active session exists]
- **Active**: [Session name] (started [time ago])
- **Duration**: [Current duration]
- **File**: `.claude/sessions/[filename].md`

### 📅 Recent Sessions

#### Today
- **[Time]** - [Session name] ([duration]) 
  - Focus: [Goals/accomplishments]
  - Status: [Completed/Incomplete]

#### This Week  
- **[Date Time]** - [Session name] ([duration])
  - Focus: [Goals/accomplishments]  
  - Git: [X files changed]

#### This Month
[Similar format for older sessions]

#### Older Sessions
[Condensed format for historical sessions]

### 📊 Session Statistics
- **Total Sessions**: [count]
- **This Week**: [count] sessions, [total duration]
- **This Month**: [count] sessions, [total duration]
- **Average Duration**: [calculated average]

### 🚀 Quick Actions
- `/session-start [name]` - Start new session
- `/session-current` - View active session details
- Load specific session: `@.claude/sessions/[filename].md`

### 💡 Tips
- Review related sessions before starting similar work
- Reference session files in commit messages
- Use session summaries for progress reports
```

## No Sessions Response

```markdown
## No Sessions Found

No development sessions have been created yet.

### 🚀 Get Started
- `/session-start [name]` - Create your first session
- `/session-help` - Learn about session management

### 📁 Sessions Directory
Sessions will be stored in: `.claude/sessions/`

### 💡 Benefits of Sessions
- **Context Preservation**: Maintain understanding across conversations
- **Progress Tracking**: Document what you've accomplished  
- **Knowledge Sharing**: Help team members understand your work
- **Decision History**: Remember why certain choices were made

### 🎯 Best Practices
- Start sessions for significant features or bug fixes
- Update regularly during development
- End sessions with comprehensive summaries
- Use descriptive names for easy identification
```

## Search and Filtering

Future enhancement suggestions:
- Filter by date range
- Search session content
- Filter by focus area or technology
- Show sessions related to specific files

## Related Commands

- `/session-start` - Create new session
- `/session-current` - View active session
- `/session-update` - Update current session  
- `/session-end` - End current session