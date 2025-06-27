# Load Context

Smart context loading based on current work, file types, and project structure.

## Usage

Load relevant specifications and guides based on what you're currently working on.

## Process

1. **Analyze Current State**
   - Check current directory
   - Identify file types present
   - Review recent git changes
   - Check for `.claude/` directory

2. **Determine Relevant Context**
   - Map file types to specifications
   - Identify task type (feature, bug, refactor)
   - Check for error patterns
   - Consider user's recent queries

3. **Load Context Intelligently**
   - Load project CLAUDE.md first
   - Load language/tool specific specs
   - Load relevant guides for task
   - Avoid loading redundant content

4. **Present Loaded Context**
   - Summary of what was loaded
   - Why each piece is relevant
   - Additional resources available

## Context Loading Rules

### File Type Mappings
- `*.py` → Python standards
- `*.js, *.ts` → JavaScript/TypeScript standards
- `*.sh` → Shell scripting guidelines
- `Dockerfile` → Container best practices
- `*.yaml, *.yml` → Configuration standards

### Task-Based Loading
- Debugging → debugging-workflows.md
- Testing → testing.md, tdd.md
- New feature → architecture guides
- Performance → optimization guides

### Project Structure
- Monorepo → Load component-specific CLAUDE.md
- Microservices → Load service conventions
- Library → Load API design guides

## Output Format

```markdown
## Context Loaded

### 📁 Project Context
- Loaded: `.claude/CLAUDE.md`
- Tech stack: [Detected technologies]

### 📚 Specifications Loaded
- `@.claude/specs/[spec1].md` - [Relevance reason]
- `@.claude/specs/[spec2].md` - [Relevance reason]

### 🛠️ Guides Available
- `@guides/[guide1].md` - [When to use]
- `@guides/[guide2].md` - [When to use]

### 💡 Suggested Next Steps
Based on loaded context:
1. [Suggested action]
2. [Recommended review]
```

## Examples

### Example: Python Project
Working in: `src/api/`
Loads: Python standards, API design, testing guidelines

### Example: Frontend Changes
Modifying: `*.tsx` files
Loads: React patterns, TypeScript standards, component guidelines

## Related Commands

- `/list-specs` - See all available specs
- `/check-standards` - Validate against loaded specs
- `/init-project` - Set up project context