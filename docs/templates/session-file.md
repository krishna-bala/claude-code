# Session File Template

Template for creating development session files. Used automatically by `/session-start`.

```markdown
# Development Session - [DATE TIME] - [NAME]

**Started**: [FULL_TIMESTAMP_WITH_TIMEZONE]
**Focus**: [SESSION_NAME_OR_GENERAL_DEVELOPMENT]

## Goals

[SESSION_GOALS_LIST]

- [ ] [Goal 1]
- [ ] [Goal 2]
- [ ] [Goal 3]

## Progress

[EMPTY_SECTION_FOR_UPDATES]

## Git State at Start

- **Branch**: [CURRENT_BRANCH]
- **Last Commit**: [COMMIT_HASH] - [COMMIT_MESSAGE]
- **Status**: [CLEAN_OR_DIRTY_WITH_FILE_COUNT]
- **Uncommitted Changes**: [LIST_IF_ANY]

## Session Notes

[SPACE_FOR_ONGOING_NOTES_AND_OBSERVATIONS]

---

### Session Update Template

Use this format for `/session-update` entries:
```

### Update - [TIMESTAMP]

**Elapsed**: [TIME_SINCE_LAST_UPDATE]
**Summary**: [USER_NOTES_OR_AUTO_SUMMARY]

**Git Changes**:

- Modified: [FILES]
- Added: [FILES]
- Deleted: [FILES]
- Branch: [BRANCH] (commit: [HASH])

**Todo Progress**: [COMPLETED/IN_PROGRESS/PENDING_COUNTS]

- ✓ [COMPLETED_TASKS]
- ⏳ [IN_PROGRESS_TASKS]
- 📋 [NEW_TASKS]

**Notes**: [ADDITIONAL_DETAILS]

```

### Session Summary Template
Automatically added by `/session-end`:

```

## Session Summary - [END_TIMESTAMP]

**Duration**: [TOTAL_TIME]
**Updates**: [UPDATE_COUNT]

### Accomplishments

- [KEY_ACHIEVEMENTS]

### Git Summary

- Files Changed: [COUNT]
- Commits Made: [COUNT]

### Lessons Learned

- [INSIGHTS_AND_DISCOVERIES]

### Future Work

- [NEXT_STEPS_AND_TODO]

```

```

## Customization Guidelines

1. **Timestamps**: Use MCP time server for accurate time with timezone
2. **Goals**: Prompt user if goals aren't clear from context
3. **Git State**: Capture complete state for baseline
4. **Structure**: Maintain consistent format for parsing
5. **Updates**: Append chronologically in Progress section

## Session Naming Convention

- Format: `[name]-YYYY-MM-DD-HHMM.md`
- Without name: `YYYY-MM-DD-HHMM.md`
- Examples:
  - `auth-refactor-2025-06-27-1430.md`
  - `2025-06-27-1430.md`

## File Location

- Project sessions: `.claude/sessions/`
- Global sessions: `~/.claude/sessions/` (if needed)
- Active session tracker: `.claude/sessions/.current-session`
