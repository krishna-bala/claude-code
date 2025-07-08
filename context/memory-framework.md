# Claude Code Memory Framework

Core architectural concepts for the memory framework.

## Architecture Overview

The framework provides persistent, context-aware memory for Claude Code through:

- **Hierarchical organization**: Global vs project-specific separation
- **Context Catalog/Index**: Provide paths to additional context for specific areas
- **Agent Exploration**: Enable agent to explore context catalog based on file types and tasks
- **Token efficiency**: Minimize context rot and optimize context for relevant tasks

## Directory Structure

### Global Configuration (`~/.claude/`)

```
~/.claude/                     # User-level configuration
├── CLAUDE.md                  # Main entry point with context catalog
├── context/                   # Core development guidelines
├── guides/                    # Universal workflows
└── templates/                 # Reusable project templates
```

### Project Configuration (`<project>/.claude/`)

```
<project>/.claude/            # Project-specific configuration
├── CLAUDE.md                 # Project context and patterns
├── specs/                    # Language and tool standards
├── guides/                   # Project-specific workflows
└── templates/                # Project templates
```

## Agent Exploration

### How It Works

1. `CLAUDE.md` contains context catalog with file paths
2. Agent reads `CLAUDE.md` and available resource indexes
3. Before tasks, agent checks if relevant context is needed
4. Agent reads specific files as needed based on task relevance

### Example Flow

```
User: "Create a git commit"
Agent:
1. Checks CLAUDE.md, sees `context/git-commit-guidelines.md`
2. Recognizes git operation pending
3. Reads: ~/.claude/context/git-commit-guidelines.md
4. Applies loaded guidelines to commit
```

## Context Triggers

### Automatic Recognition

- File type detection (`\*.py` → `python-standards.md`)
- Task detection (debugging → `debugging-workflows.md`)
- Error patterns (build failure → `build-troubleshooting.md`)
- User requests (testing → `testing.md`, `tdd.md`)

## Token Management

### Budget Guidelines

- Global `CLAUDE.md`: <500 tokens
- Individual specs/guides: <200 tokens each
- Project `CLAUDE.md`: <200 tokens
- Total baseline: <5K tokens

### Optimization Strategies

1. Assume user-level references by default (`~/.claude/`)
2. Project-level paths will be prefixed with `<project>/.claude`
3. Split large files into focused topics
4. Archive verbose content
5. Progressive disclosure (quick ref → details)

## File Organization

### Specs (Standards/Requirements)

- Quick reference (3-5 points)
- Detailed guidelines
- Examples (good/bad)
- Context triggers
- 50-200 lines per file

### Guides (Workflows/Processes)

- When to use
- Step-by-step process
- Troubleshooting
- Tools and commands
- 50-150 lines per file

## Best Practices

### Creating Specs

1. Start with quick reference
2. Include concrete examples
3. Define loading triggers
4. Keep actionable and focused

### Writing Guides

1. Clear "when to use" section
2. Numbered process steps
3. Include troubleshooting
4. Link related resources

### Maintaining Context

1. Update with code changes
2. Archive outdated content
3. Review quarterly
4. Keep tokens optimized

## Framework Benefits

1. **Persistence**: Context survives across sessions
2. **Efficiency**: Read only what's needed
3. **Scalability**: Grows with project complexity
4. **Consistency**: Standardized patterns
5. **Discoverability**: Clear organization
