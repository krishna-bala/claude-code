# Context Loading Patterns

## git-operations-context

```
**Read context from:**
- `~/.claude/context/git-commit-guidelines.md`
- `~/.claude/context/pr-guidelines.md`
```

## testing-context

```
**Read context from:**
- `~/.claude/context/testing.md`
- `~/.claude/context/tdd.md`
- Auto-detects project test standards
```

## code-review-context

```
**Read context from:**
- `~/.claude/context/code-review.md`
- `~/.claude/context/pr-guidelines.md`
- `~/.claude/context/git-commit-guidelines.md`
```

## debugging-context

```
**Read context from:**
- `~/.claude/guides/debugging-workflows.md`
- `~/.claude/context/testing.md`
- Auto-detects language specs from current project
```

## memory-framework-context

```
**Read context from:**
- `~/.claude/context/memory-framework.md`
- `~/.claude/guides/memory-framework-guide.md`
- Project .claude/ directory structure
```

## universal-context-loading

```
Automatically loads:
- Current session conversation history
- Files that were read or modified during session
- Context files that were referenced

Uses time MCP server:
- `mcp__time__get_current_time` for timestamp generation
```
