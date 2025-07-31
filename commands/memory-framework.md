Explore and visualize the memory framework structure by recursively following @-import references.

---

This command analyzes the memory framework starting from CLAUDE.md, recursively parsing all @-import references to build a complete view of the loaded context hierarchy. It helps users and agents understand what context is automatically available through the memory framework loading system. The command uses natural language parsing to determine scope (user-level vs project-level) and any specific focus areas.

## Process

1. **Parse intent**: Analyze input for keywords like "project", "user", "verbose", or specific topics to focus on
2. **Locate starting point**: Find appropriate CLAUDE.md (defaults to user-level `~/.claude/CLAUDE.md`, or project-level if "project" mentioned)
3. **Parse @-imports**: Extract all @-import references from the file using regex pattern `@([^\s]+)`
4. **Recursive exploration**: Follow each @-import reference, tracking visited files to prevent cycles
5. **Build tree structure**: Create hierarchical representation of the import chain
6. **Apply focus filter**: If a topic was mentioned, highlight or filter results accordingly
7. **Display results**: Show tree view or concatenated content based on mode

## Output Example

**Standard tree view**:
```
~/.claude/CLAUDE.md [root]
└── `@docs/README.md` ✓

Summary: 6 files loaded, 1 missing
```

**Verbose mode** (concatenates all file contents):
```
# Memory Framework Export
Generated: 2025-07-31

## File: ~/.claude/CLAUDE.md
[entire contents of CLAUDE.md]

## File: ~/.claude/docs/README.md
[entire contents of docs/README.md]

## File: ~/.claude/docs/git/README.md
[entire contents of git/README.md]

[... continues for all imported files ...]
```

## Examples

**Basic user-level exploration**:
```
/memory-framework
/memory-framework user
/memory-framework show me what's loaded
```
Shows the user-level memory framework structure

**Project-level exploration**:
```
/memory-framework project
/memory-framework explore project memory
/memory-framework what's in the project claude folder
```
Explores the current project's `.claude/CLAUDE.md` instead

**Focused exploration**:
```
/memory-framework focusing on git
/memory-framework project memory related to testing
/memory-framework show me documentation imports
```
Highlights or filters results based on the specified topic

**Verbose mode** (full content export):
```
/memory-framework verbose
/memory-framework show me everything
/memory-framework export all content
/memory-framework give me the full memory dump
```
Concatenates all imported file contents into a single output

## Context Integration

- Memory framework architecture: @docs/memory-framework/architecture.md