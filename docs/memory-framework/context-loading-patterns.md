# Context Loading Patterns

Best practices for organizing and loading specs, guides, and context efficiently.

## Core Principles

### 1. Progressive Loading

- Start with minimal context
- Load details on demand
- Use triggers for automatic loading
- Keep baseline under 5K tokens

### 2. File-Type Triggers

Map file extensions to relevant specs:

- `*.py` → python-standards.md
- `*.js, *.ts` → javascript-standards.md
- `BUILD, *.bazel` → bazel-practices.md
- `Dockerfile` → docker-practices.md

### 3. Problem-Based Loading

Load guides based on:

- Error patterns
- Task types
- User queries
- Git state

## Loading Strategies

### Automatic Context Loading

```markdown
# In commands/load-context.md

## Process

1. Detect active file types
2. Check for .claude/ directory
3. Load relevant specs
4. Present available guides
```

### Manual Loading Patterns

```bash
# Load specific context
@specs/python-standards.md

# Load multiple related
@specs/testing-spec.md @guides/debugging-workflows.md

# Load from parent project
@../.claude/specs/api-spec.md
```

### Conditional Loading

```markdown
# In project CLAUDE.md

## Context Loading

- Working on API? Load @specs/api-spec.md
- Debugging? Use @guides/debugging-workflows.md
- New feature? Reference @guides/architecture.md
```

## Organization Patterns

### Hierarchical Specs

```
specs/
├── README.md              # Navigation
├── language/
│   ├── python.md         # Python standards
│   └── javascript.md     # JS standards
├── tools/
│   ├── docker.md         # Docker practices
│   └── git.md            # Git conventions
└── project/
    ├── api.md            # API design
    └── database.md       # DB patterns
```

### Cross-References

Use consistent linking:

```markdown
## Related Specs

- Python testing: @specs/language/python.md#testing
- API patterns: @specs/project/api.md
- Debug workflow: @guides/debugging-workflows.md
```

### Token Budget Management

Structure for efficiency:

- Quick reference: 50-100 tokens
- Detailed section: 200-500 tokens
- Examples: Move to separate files
- Archive verbose content

## Anti-Patterns to Avoid

### Over-Loading

❌ Loading all specs on startup
✅ Load based on current task

### Duplication

❌ Copying content between specs
✅ Reference shared concepts

### Deep Nesting

❌ `specs/lang/python/testing/unit/fixtures.md`
✅ `specs/python-testing.md`

### Monolithic Files

❌ One 1000-line spec file
✅ Multiple focused 100-line files

## Implementation Examples

### Smart Command Loading

```bash
/load-context

# Detects:
# - Current directory has *.py files
# - Git shows recent Python changes
# - Loads: python-standards.md, testing-spec.md
```

### Project CLAUDE.md

```markdown
## Active Specs

- @specs/python-standards.md (backend)
- @specs/react-patterns.md (frontend)
- @specs/api-design.md (interfaces)

## Conditional Loading

Working on specific areas? Load:

- Database: @specs/database-patterns.md
- Auth: @guides/authentication.md
```

## Tools and Commands

- `/load-context` - Smart loading
- `/list-specs` - Available specs
- `/check-standards` - Validate code

## Related Resources

- @guides/project-setup.md - Structure projects
- @context/documentation.md - Doc philosophy
- @templates/spec-template.md - Create specs
