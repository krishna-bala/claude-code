# Session Management Guide

Comprehensive guide for using Claude Code's session management system to maintain context and document development work.

## When to Use Sessions

### Start a Session For:

- Feature development or enhancement
- Bug investigation and fixing
- Refactoring significant code areas
- Architecture planning and implementation
- Learning or exploring new technologies
- Complex debugging or performance tuning

### Session Benefits:

- **Context Preservation**: Maintain understanding across multiple Claude conversations
- **Progress Documentation**: Automatic tracking of what was accomplished
- **Knowledge Transfer**: Rich context for team members and future work
- **Decision History**: Remember why certain approaches were taken
- **Issue Tracking**: Document problems and their solutions

## Session Workflow

### 1. Starting a Session

```bash
# With descriptive name (recommended)
/session-start authentication-refactor

# Without name (uses timestamp only)
/session-start
```

**What happens:**

- Creates timestamped session file in `.claude/sessions/`
- Sets up session structure with goals and progress sections
- Captures initial git state as baseline
- Prompts for session goals if not clear

### 2. During Development

```bash
# Update with specific notes
/session-update Implemented OAuth middleware with error handling

# Auto-update (analyzes recent changes)
/session-update
```

**Regular updates capture:**

- Git changes (files added/modified/deleted)
- Todo list progress
- Problems encountered and solutions
- Implementation decisions and their rationale

### 3. Ending a Session

```bash
/session-end
```

**Generates comprehensive summary:**

- Complete git change analysis
- Todo completion tracking
- Key accomplishments and learnings
- Issues encountered and their solutions
- Recommendations for future work

### 4. Session Management

```bash
# Check current session status
/session-current

# List all past sessions
/session-list
```

## Best Practices

### Session Planning

- **Use descriptive names** that indicate the main focus
- **Define clear goals** at the beginning
- **Start sessions for significant work** (not minor tweaks)
- **One focus per session** to maintain clarity

### During Sessions

- **Update regularly** when completing significant tasks
- **Document unexpected issues** and their solutions immediately
- **Track breaking changes** or important discoveries
- **Note dependencies added** or configuration changes

### Session Endings

- **Always end sessions** with `/session-end` before switching focus
- **Review generated summary** for completeness
- **Add missing context** before closing if needed
- **Reference sessions in commits** for additional context

## Session Organization

### File Structure

```
.claude/sessions/
├── .current-session          # Tracks active session
├── auth-2025-06-27-1430.md   # Named session
├── 2025-06-27-1635.md        # Unnamed session
└── api-2025-06-28-0930.md    # Another session
```

### Naming Convention

- Format: `[name]-YYYY-MM-DD-HHMM.md`
- Examples:
  - `user-auth-2025-06-27-1430.md`
  - `bug-fix-2025-06-27-1635.md`
  - `2025-06-28-0930.md` (no name)

### Session Content

Each session file contains:

- **Header**: Session name, start time, focus area
- **Goals**: Specific objectives for the session
- **Progress**: Chronological updates with timestamps
- **Git State**: Initial repository state
- **Summary**: Comprehensive end-of-session summary

## Integration with Memory Framework

### Context Loading

Sessions integrate with the memory framework:

- **Load past sessions**: `@.claude/sessions/[filename].md`
- **Reference similar work**: Review sessions before starting related tasks
- **Maintain continuity**: Sessions provide context for memory framework

### Project Setup

Sessions are automatically included when using:

- `/init-project` creates sessions directory
- Project CLAUDE.md template references session management
- Session commands available in all projects

## Advanced Usage

### Searching Sessions

```bash
# List sessions to find relevant ones
/session-list

# Load specific session for context
@.claude/sessions/auth-2025-06-27-1430.md
```

### Cross-Session References

In session updates, reference related sessions:

- "Building on authentication work from session auth-2025-06-26-1130.md"
- "Resolves issue first encountered in session api-2025-06-25-0945.md"

### Team Collaboration

- **Commit session files** to share context with team
- **Reference sessions in PRs** for additional context
- **Use session summaries** for standup updates
- **Onboard new team members** with relevant session history

## Time and Timezone Handling

Sessions use the MCP time server for accuracy:

- **Consistent timestamps** across different environments
- **Timezone awareness** for distributed teams
- **Duration calculations** for productivity insights
- **Scheduling context** for when work typically happens

## Troubleshooting

### Common Issues

**"No active session" error**

- Start a new session with `/session-start [name]`
- Check that `.claude/sessions/.current-session` exists

**Session updates not working**

- Verify session file exists in `.claude/sessions/`
- Check file permissions
- Ensure you're in the project root

**Missing session directory**

- Run `/init-project` to set up project structure
- Manually create `.claude/sessions/` directory

### Recovery

**Lost session tracking**

- Check `.current-session` file content
- Manually update with correct session filename
- Restart session if necessary

**Corrupted session file**

- Review session file format
- Restore from git if needed
- Use session templates for structure

## Integration Examples

### Feature Development

```bash
/session-start user-profile-page
# Implement feature components
/session-update Created profile component with avatar upload
# Handle edge cases
/session-update Added validation and error handling
# Complete feature
/session-end
```

### Bug Investigation

```bash
/session-start memory-leak-investigation
# Analyze the problem
/session-update Identified leak in WebSocket connection handling
# Implement fix
/session-update Implemented proper cleanup in useEffect hook
# Verify fix
/session-update Confirmed fix with memory profiling
/session-end
```

### Refactoring

```bash
/session-start database-service-refactor
# Plan the refactoring
/session-update Designed new service layer architecture
# Execute changes
/session-update Migrated user queries to new UserService
# Update tests
/session-update Updated all related tests and mocks
/session-end
```

## Related Resources

- **Commands**: `/session-start`, `/session-update`, `/session-end`, `/session-current`, `/session-list`
- **Templates**: Check templates directory for session templates
- **Framework**: `@memory-framework/architecture.md` - Overall framework integration
- **Project Setup**: `@project-setup/setup.md` - Including sessions in projects
