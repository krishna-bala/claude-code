Capture work context to easily resume tasks, research, or development later.

---

Save important context, decisions, code changes, and insights as a "context scratchpad" that helps you jump back into this specific work later. Interactively verify content with user through a checklist review. Creates structured session files for seamless work resumption.

## Command Type

maintenance - [Complexity: medium]

## Tool Usage

- **Primary**: TodoRead (check current tasks), Write (create context file), mcp**time**get_current_time (timestamps)
- **Secondary**: Read (review conversation), Glob (find similar contexts), Grep (search patterns)
- **Avoid**: Edit (creates new files), Bash (unless checking git status)

## Context

- **Files**: Current session conversation, modified files, existing context files
- **Patterns**: Session state, decision points, code changes, insights
- **Dependencies**: Project structure, development phase, task complexity

## Process

1. **Context Discovery**

   - Scan for existing context files with similar work focus
   - If similar context found, prompt: "Found existing context: 'auth-refactor-2024-06-15'. Would you like to update it or create new?"
   - Review conversation for key decisions, insights, and progress
   - Identify code changes, patterns discovered, and problems solved
   - Extract references that were helpful (docs, files, commands)

2. **Content Verification** (Interactive Checklist)

   - Present identified content as a checklist for user review
   - Allow user to check/uncheck items to include
   - Provide brief descriptions of each item's relevance
   - Allow user to add additional context items
   - Confirm final selection before generating file

3. **Context File Creation**
   - Prompt for context name that describes the work focus (e.g., "auth-refactor", "memory-leak-fix")
   - Get timestamp using time MCP server
   - Create structured context file at `.claude/contexts/<context-name>-YYYY-MM-DD-HHMM.md`
   - Structure content for easy resumption - "Here's where we left off..."
   - Include breadcrumbs to quickly re-establish mental context

## Context Loading

Automatically loads:

- Current session conversation history
- Files that were read or modified during session
- Context files that were referenced

Uses time MCP server:

- `mcp__time__get_current_time` for timestamp generation

## Output Format

<output-format>

# Context: [Context Name] - [Date/Time]

## Where We Left Off

- **Working on**: [What you were doing]
- **Current status**: [How far you got]
- **Next logical step**: [What to do when resuming]

## Key Discoveries

- **What worked**: [Successful approaches and solutions]
- **What didn't work**: [Dead ends and why they failed]
- **Important insights**: [Things that changed your understanding]

## Code Changes Made

- **Files modified**: [List with brief descriptions of changes]
- **Patterns applied**: [Useful approaches that worked]
- **Testing approach**: [How you verified changes]

## Useful References

- **Files to know about**: [Auto-linked to relevant files]
- **Commands that helped**: [Specific commands/tools that were useful]
- **Resources referenced**: [Docs, examples, context files used]

## Gotchas & Lessons

- **Watch out for**: [Potential pitfalls discovered]
- **Remember**: [Important things to keep in mind]
- **Performance notes**: [Optimization insights]

## To Resume This Work

- **Start by**: [First thing to do when picking this up again]
- **Check**: [Things to verify before continuing]
- **Remember**: [Key context to re-establish]

## Future Ideas

- **Next features**: [Related work that could follow]
- **Improvements**: [Ways to enhance current solution]
- **Technical debt**: [Things that need cleanup later]

</output-format>

## Checklist Verification Process

Present content as:

```
□ Key decision about database schema design
□ Solution for authentication token handling
□ Code changes in user.py and auth.py
□ Discussion about testing approach
□ Performance optimization notes
□ Debugging session for login timeout issue
□ References to ~/.claude/context/testing.md
□ Action items for next session
□ Unresolved question about deployment strategy

Additional items to include:
[ User can add items here ]
```

## Validation

- Context file is created with proper timestamp
- User confirms content selection via checklist
- Essential work context is preserved
- File is saved to correct location
- Future resumption steps are clear

## Examples

### Example 1: Bug Investigation Context

Input: "I was debugging the login timeout issue and got partially through it"
Output: Context file "login-timeout-debug-2024-06-15-1430.md" with problem analysis, what was tried, what worked, and next debugging steps

### Example 2: Feature Development Context

Input: "Made good progress on user registration feature, need to save where I left off"
Output: Context file "user-registration-2024-06-15-1630.md" with implementation decisions, current state, and what to tackle next
