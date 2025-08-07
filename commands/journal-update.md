Automatically analyze conversation history and generate a comprehensive learning journal entry.

---

Extracts problems solved, code written, and concepts discussed from the current conversation, identifies connections to previous journal entries, and generates a formatted draft entry that matches your existing journal structure. The command pulls context directly from the session without requiring you to retell what happened, focusing on capturing the "why" behind solutions and building explicit connections between learning sessions.

## Process

1. **Locate Journal**

   - Search for existing journal files (`**/learning-journal.md` or `**/journal.md`)
   - Use last accessed journal if multiple found
   - Prompt for path only if ambiguous

2. **Analyze Conversation**

   - Extract all problems encountered and their solutions
   - Identify key code snippets with contextual importance
   - Capture conceptual breakthroughs and patterns
   - Note commands and workflows used
   - Focus on extracting the "why" from discussions

3. **Review Previous Entries**

   - Read existing journal to understand format and structure
   - Identify connections to previous learning
   - Find recurring themes and progression
   - Note what's new vs what builds on previous sessions

4. **Generate Draft Entry**

   - Match the existing journal's format and style
   - Include appropriate date and session headers
   - Structure sections based on detected pattern:
     - Problems Solved (with explanations)
     - Conceptual Breakthroughs
     - Code Patterns/Architecture
     - Quick Reference Commands
     - Connections to Previous Learning
   - Maintain consistent formatting and depth

5. **Review and Finalize**
   - Present complete draft for review
   - Ask only: "Any additional insights or questions you want to add?"
   - Incorporate any additions
   - Append to journal file with proper formatting

## Output Example

````markdown
## Session N: [Topic Summary]

_Date: 2025-01-08_

### Problems Solved

#### 1. [Problem Title]

**The Problem:**
[Clear description of what went wrong or needed solving]

**Why It Happened:**
[Root cause analysis extracted from conversation]

**The Fix:**

```language
[Relevant code with annotations]
```
````

**Lesson:** [Key takeaway for future reference]

---

### Conceptual Breakthroughs

#### [Concept Name]

**The Insight:**
[Explanation of the concept and why it matters]

**The Pattern:**

```language
[Code demonstrating the concept]
```

---

### Connections to Previous Learning

- Builds on Session X's [concept] by [relationship]
- Extends the [pattern] we discovered when [context]
- Answers the open question from Session Y about [topic]

---

### Next Session Focus

- [Identified next steps or open questions]

```

## Examples

**Basic usage after solving a problem:**
```

/journal-update

```
Finds your journal, analyzes the conversation about the bug fix, and creates entry with problem, solution, and why it occurred.

**After learning new framework concepts:**
```

/journal-update

```
Captures the framework patterns discussed, code examples tried, and connections to previous framework knowledge.

**Complex multi-topic session:**
```

/journal-update

```
Organizes multiple problems and concepts into coherent entry, maintaining chronological flow while grouping related insights.

## Context Integration

- Analyzes entire conversation history without requiring retelling
- Preserves code snippets with their explanatory context
- Extracts the "why" from troubleshooting discussions
- Identifies learning progression across sessions
- Maintains journal consistency and format
```
