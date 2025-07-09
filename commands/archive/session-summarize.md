# Session Summarize

Create a comprehensive summary of the current development session with searchable tags.

## Usage

Generates a thorough session summary with searchable tags, allowing the session to be closed or continued later via `/session-load`.

## Process

1. **Verify Active Session**

   - Check `.claude/sessions/.current-session` for active session
   - If no active session, inform user there's nothing to summarize
   - Load session file for analysis

2. **Calculate Session Metrics**

   - Use `mcp__time__get_current_time` for end timestamp
   - Calculate total session duration
   - Count updates and major milestones

3. **Generate Comprehensive Summary with Tags**

   ```markdown
   <session-summary>
   ## Session Summary - [End Timestamp]

   **Duration**: [Total time] ([Start time] → [End time])
   **Updates**: [Number of updates made]

   ### Git Summary

   - **Files Changed**: [Total count] ([added/modified/deleted breakdown])
   - **Changed Files**:
     - Added: [list with paths]
     - Modified: [list with paths]
     - Deleted: [list with paths]
   - **Commits**: [Number of commits made during session]
   - **Final Status**: [Clean/dirty with details]

   ### Todo Summary

   - **Completed**: [count] tasks
   - **In Progress**: [count] tasks
   - **Pending**: [count] tasks
   - **Completed Tasks**:
     - [List all completed tasks]
   - **Remaining Tasks**:
     - [List incomplete tasks with status]

   ### Accomplishments

   - [Key features implemented]
   - [Major bugs fixed]
   - [Refactoring completed]
   - [Architecture decisions made]

   ### Technical Details

   - **Dependencies**: [Added/removed packages]
   - **Configuration**: [Config files changed]
   - **Database**: [Schema changes, migrations]
   - **API Changes**: [New endpoints, breaking changes]

   ### Issues & Solutions

   - **Problems Encountered**: [Detailed list]
   - **Solutions Implemented**: [How issues were resolved]
   - **Workarounds**: [Temporary fixes]
   - **Known Issues**: [Unresolved problems]

   ### Knowledge & Insights

   - **Lessons Learned**: [Important discoveries]
   - **Best Practices**: [Patterns that worked well]
   - **Gotchas**: [Things to watch out for]
   - **Performance Notes**: [Optimization insights]

   ### Future Work

   - **Incomplete Tasks**: [What wasn't finished]
   - **Next Steps**: [Recommended next actions]
   - **Refactoring Opportunities**: [Technical debt identified]
   - **Testing Needs**: [Areas needing more tests]

   ### Development Environment

   - **Tools Used**: [IDEs, databases, services]
   - **Commands Run**: [Important terminal commands]
   - **Debugging Techniques**: [What helped troubleshoot]

   ### For Future Developers

   - **Context**: [Why certain decisions were made]
   - **Architecture**: [How components relate]
   - **Testing**: [How to test changes]
   - **Deployment**: [How to deploy changes]

   ### Keywords

   [Searchable tags: technology, feature-area, problem-type, etc.]
   </session-summary>
   ```

4. **Session Options**

   - Ask user: Close session or keep active for continuation
   - If closing: Clear `.claude/sessions/.current-session` file
   - If keeping active: Leave session available for `/session-load`

5. **Archive Session**
   - Ensure session file is properly saved
   - Make session searchable for future reference

## Context Loading

Analyzes entire session:

- All session updates and progress
- Complete git history during session
- Todo list changes throughout
- File modifications and their context

## Output Format

```markdown
## Session Summarized ✅

**Session**: [Session name]
**Duration**: [Total time]
**File**: `.claude/sessions/[filename].md`
**Status**: [Closed/Active for continuation]

### Key Outcomes

- [Major accomplishment 1]
- [Major accomplishment 2]
- [Major accomplishment 3]

### Searchable Summary

A tagged summary has been added to enable efficient context searching:

- **Keywords**: [technology, feature-area, problem-type]
- **Searchable**: Agents can find this session via `<session-summary>` tags
- **Context Loading**: Load just the summary without full session details

### Next Steps

- **Continue**: `/session-load [session-name]` to resume work
- **Reference**: Search sessions by keywords for related context
- **New Work**: `/session-start [name]` for different focus area
```

## Related Commands

- `/session-start` - Start a new session
- `/session-load` - Resume/continue this session
- `/session-list` - View all past sessions
- `/session-current` - Check if session is active
