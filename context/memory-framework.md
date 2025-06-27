# Claude Code Memory Framework

Technical documentation for the memory framework architecture.

## Architecture Overview

The framework provides persistent, context-aware memory for Claude Code through:
- **Hierarchical organization**: Global vs project-specific separation
- **Lazy loading**: Load context only when needed
- **Smart triggers**: Automatic loading based on file types and tasks
- **Token efficiency**: Optimized for context window management

## Directory Structure

### Global Configuration (~/.claude/)
```
~/.claude/                      # User-level configuration
├── CLAUDE.md                  # Main entry point with lazy-load references
├── commands/                  # Slash commands for actions
├── context/                   # Core development guidelines
├── guides/                    # Universal workflows
└── templates/                 # Reusable project templates
```

### Project Configuration (<project>/.claude/)
```
<project>/.claude/             # Project-specific configuration
├── CLAUDE.md                 # Project context and patterns
├── specs/                    # Language and tool standards
├── guides/                   # Project-specific workflows
└── templates/                # Project templates
```

## Lazy Loading Mechanism

### How It Works
1. CLAUDE.md contains backtick-wrapped references: `@context/file.md`
2. Agent reads CLAUDE.md without loading referenced files
3. Before tasks, agent checks if relevant context is needed
4. Agent removes backticks and loads specific files as needed

### Example Flow
```
User: "Create a git commit"
Agent: 
1. Checks CLAUDE.md, sees `@context/git-commit-guidelines.md`
2. Recognizes git operation pending
3. Loads: @context/git-commit-guidelines.md
4. Applies loaded guidelines to commit
```

## Context Loading Patterns

### Automatic Triggers
- File type detection (*.py → python-standards.md)
- Task detection (debugging → debugging-workflows.md)
- Error patterns (build failure → build-troubleshooting.md)
- Command usage (/check-standards → relevant specs)

### Manual Loading
- Direct @-reference in conversation
- Slash commands (/load-context)
- Explicit user request

## Token Management

### Budget Guidelines
- Global CLAUDE.md: <500 tokens
- Individual specs/guides: <200 tokens each
- Project CLAUDE.md: <200 tokens
- Total baseline: <5K tokens

### Optimization Strategies
1. Use backticks to prevent auto-loading
2. Split large files into focused topics
3. Archive verbose content
4. Progressive disclosure (quick ref → details)

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

### Commands (Automated Actions)
- Clear process steps
- Context loading rules
- Output format
- 30-80 lines per file

## Implementation Details

### Command Integration
Commands can:
- Detect project structure
- Load relevant context
- Apply standards validation
- Generate structured output

### Cross-References
- Use consistent @-notation
- Relative paths for project files
- Absolute paths for global files
- Backticks for lazy loading

### Version Control
- Commit .claude/ directories
- Track changes with git
- Document decisions in commits
- Regular review cycles

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
2. **Efficiency**: Load only what's needed
3. **Scalability**: Grows with project complexity
4. **Consistency**: Standardized patterns
5. **Discoverability**: Clear organization

## Extending the Framework

### Adding New Specs
1. Use `@templates/spec-template.md`
2. Place in appropriate directory
3. Update index/navigation
4. Add loading triggers

### Custom Commands
1. Use `@templates/command-template.md`
2. Define context loading
3. Implement process steps
4. Test with various scenarios

## Related Resources

- `@guides/memory-framework-guide.md` - User guide
- `@guides/project-setup.md` - Project initialization
- `@guides/context-loading-patterns.md` - Loading strategies
- `@templates/README.md` - Available templates