# Session Summary Template

Template for comprehensive session summaries generated by `/session-end`.

````markdown
## Session Summary - [END_TIMESTAMP]

**Duration**: [TOTAL_TIME] ([START_TIME] → [END_TIME])
**Updates**: [NUMBER_OF_UPDATES] progress updates
**Session ID**: [SESSION_FILENAME]

---

### 📊 Git Summary

**Files Changed**: [TOTAL_COUNT] ([ADDED_COUNT] added, [MODIFIED_COUNT] modified, [DELETED_COUNT] deleted)

**Changed Files**:

- **Added**:

  - [FILE_PATH_1] - [DESCRIPTION]
  - [FILE_PATH_2] - [DESCRIPTION]

- **Modified**:

  - [FILE_PATH_1] - [DESCRIPTION]
  - [FILE_PATH_2] - [DESCRIPTION]

- **Deleted**:
  - [FILE_PATH_1] - [DESCRIPTION]

**Commits Made**: [COMMIT_COUNT] during session

- [COMMIT_HASH]: [COMMIT_MESSAGE]

**Final Git Status**: [CLEAN_OR_PENDING_CHANGES]

---

### ✅ Todo Summary

**Task Completion**: [COMPLETED_COUNT] completed, [IN_PROGRESS_COUNT] in progress, [PENDING_COUNT] pending

**Completed Tasks**:

- ✓ [TASK_1]
- ✓ [TASK_2]
- ✓ [TASK_3]

**Remaining Tasks**:

- ⏳ [IN_PROGRESS_TASK] (in progress)
- 📋 [PENDING_TASK_1] (pending)
- 📋 [PENDING_TASK_2] (pending)

---

### 🎯 Accomplishments

**Major Features**:

- [FEATURE_1] - [DESCRIPTION]
- [FEATURE_2] - [DESCRIPTION]

**Bug Fixes**:

- [BUG_1] - [DESCRIPTION_AND_SOLUTION]
- [BUG_2] - [DESCRIPTION_AND_SOLUTION]

**Refactoring**:

- [REFACTOR_1] - [IMPACT_AND_REASON]
- [REFACTOR_2] - [IMPACT_AND_REASON]

**Architecture Decisions**:

- [DECISION_1] - [RATIONALE]
- [DECISION_2] - [RATIONALE]

---

### 🔧 Technical Details

**Dependencies**:

- Added: [PACKAGE_1], [PACKAGE_2]
- Removed: [PACKAGE_1], [PACKAGE_2]
- Updated: [PACKAGE_1] (v[OLD] → v[NEW])

**Configuration Changes**:

- [CONFIG_FILE_1]: [CHANGES_MADE]
- [CONFIG_FILE_2]: [CHANGES_MADE]

**Database Changes**:

- Schema: [SCHEMA_CHANGES]
- Migrations: [MIGRATION_FILES]
- Seed Data: [SEED_CHANGES]

**API Changes**:

- New Endpoints: [ENDPOINT_LIST]
- Modified Endpoints: [ENDPOINT_LIST]
- Breaking Changes: [BREAKING_CHANGE_LIST]

---

### 🐛 Issues & Solutions

**Problems Encountered**:

1. **[PROBLEM_1]**

   - _Symptoms_: [WHAT_HAPPENED]
   - _Root Cause_: [WHY_IT_HAPPENED]
   - _Solution_: [HOW_IT_WAS_FIXED]
   - _Prevention_: [HOW_TO_AVOID_FUTURE]

2. **[PROBLEM_2]**
   - _Symptoms_: [WHAT_HAPPENED]
   - _Root Cause_: [WHY_IT_HAPPENED]
   - _Solution_: [HOW_IT_WAS_FIXED]

**Workarounds Implemented**:

- [WORKAROUND_1]: [DESCRIPTION_AND_REASON]
- [WORKAROUND_2]: [DESCRIPTION_AND_REASON]

**Known Issues**:

- [UNRESOLVED_ISSUE_1]: [DESCRIPTION_AND_PLAN]
- [UNRESOLVED_ISSUE_2]: [DESCRIPTION_AND_PLAN]

---

### 💡 Knowledge & Insights

**Lessons Learned**:

- [LESSON_1]: [WHAT_WAS_LEARNED]
- [LESSON_2]: [WHAT_WAS_LEARNED]

**Best Practices Discovered**:

- [PRACTICE_1]: [WHY_IT_WORKS_WELL]
- [PRACTICE_2]: [WHY_IT_WORKS_WELL]

**Gotchas and Pitfalls**:

- [GOTCHA_1]: [WHAT_TO_WATCH_OUT_FOR]
- [GOTCHA_2]: [WHAT_TO_WATCH_OUT_FOR]

**Performance Notes**:

- [OPTIMIZATION_1]: [IMPACT_AND_MEASUREMENT]
- [OPTIMIZATION_2]: [IMPACT_AND_MEASUREMENT]

---

### 🚀 Future Work

**Immediate Next Steps**:

1. [NEXT_STEP_1] - [PRIORITY_AND_REASON]
2. [NEXT_STEP_2] - [PRIORITY_AND_REASON]
3. [NEXT_STEP_3] - [PRIORITY_AND_REASON]

**Incomplete Work**:

- [INCOMPLETE_1]: [WHAT_REMAINS_AND_COMPLEXITY]
- [INCOMPLETE_2]: [WHAT_REMAINS_AND_COMPLEXITY]

**Refactoring Opportunities**:

- [TECH_DEBT_1]: [DESCRIPTION_AND_PRIORITY]
- [TECH_DEBT_2]: [DESCRIPTION_AND_PRIORITY]

**Testing Needs**:

- [TEST_AREA_1]: [WHAT_TESTING_IS_NEEDED]
- [TEST_AREA_2]: [WHAT_TESTING_IS_NEEDED]

---

### 🛠️ Development Environment

**Tools Used**:

- IDE: [IDE_NAME_AND_VERSION]
- Database: [DATABASE_AND_VERSION]
- Services: [EXTERNAL_SERVICES_USED]

**Key Commands Run**:

```bash
[IMPORTANT_TERMINAL_COMMANDS_FOR_REFERENCE]
```
````

**Debugging Techniques**:

- [TECHNIQUE_1]: [WHEN_AND_WHY_USEFUL]
- [TECHNIQUE_2]: [WHEN_AND_WHY_USEFUL]

**Development Workflow**:

- [WORKFLOW_STEP_1]
- [WORKFLOW_STEP_2]
- [WORKFLOW_STEP_3]

---

### 📝 For Future Developers

**Context and Background**:
[WHY_THIS_WORK_WAS_NEEDED_AND_BUSINESS_CONTEXT]

**Key Architectural Decisions**:

- [DECISION_1]: [RATIONALE_AND_ALTERNATIVES_CONSIDERED]
- [DECISION_2]: [RATIONALE_AND_ALTERNATIVES_CONSIDERED]

**How to Test Changes**:

```bash
[COMMANDS_TO_VERIFY_FUNCTIONALITY]
```

**How to Deploy**:

```bash
[DEPLOYMENT_COMMANDS_AND_PROCESS]
```

**Important Code Locations**:

- [COMPONENT_1]: [FILE_PATH] - [PURPOSE]
- [COMPONENT_2]: [FILE_PATH] - [PURPOSE]

**Dependencies and Relationships**:

- [MODULE_1] depends on [MODULE_2] because [REASON]
- [SERVICE_1] communicates with [SERVICE_2] via [METHOD]

---

### 📈 Session Metrics

**Time Breakdown**:

- Planning: [TIME_ESTIMATE]
- Implementation: [TIME_ESTIMATE]
- Testing: [TIME_ESTIMATE]
- Debugging: [TIME_ESTIMATE]
- Documentation: [TIME_ESTIMATE]

**Productivity Notes**:

- [WHAT_WENT_WELL]
- [WHAT_COULD_BE_IMPROVED]
- [TOOLS_THAT_HELPED]
- [BLOCKERS_ENCOUNTERED]

---

**Session completed at [END_TIMESTAMP_WITH_TIMEZONE]**

```

## Template Usage Guidelines

1. **Replace placeholders** with actual session data
2. **Remove unused sections** if not applicable
3. **Add custom sections** for project-specific needs
4. **Keep formatting consistent** for easy parsing
5. **Include specific details** rather than generic statements

## Automation Notes

This template is used by `/session-end` command to:
- Auto-populate git and todo data
- Calculate time metrics
- Structure comprehensive summaries
- Maintain consistent documentation format
```
