# List Specs

Show available specifications in the current project and suggest relevant ones.

## Usage

Display all specs available in project's `.claude/specs/` directory with descriptions.

## Process

1. **Locate Spec Directory**
   - Check for `.claude/specs/` in project root
   - Fall back to parent directories if needed
   - Note if no specs directory found

2. **Scan Available Specs**
   - List all `.md` files in specs directory
   - Extract description from each file
   - Group by category if organized

3. **Analyze Current Context**
   - Check active file types
   - Review recent changes
   - Identify which specs are most relevant

4. **Present Results**
   - List all available specs
   - Highlight relevant ones
   - Suggest missing specs

## Output Format

```markdown
## Available Specifications

### 📋 Project Specs (.claude/specs/)

#### Language Standards
- `python-standards.md` - Python coding conventions
- `javascript-standards.md` - JS/TS best practices

#### Architecture
- `api-design.md` - REST API conventions
- `database-patterns.md` - DB schema guidelines

#### Tools & Configuration
- `docker-practices.md` - Container standards
- `ci-cd-config.md` - Pipeline conventions

### 🎯 Currently Relevant
Based on your recent work:
- `python-standards.md` (working with *.py files)
- `api-design.md` (modifying endpoints)

### 💡 Suggested Additions
Consider adding these specs:
- Testing standards (no test spec found)
- Security guidelines
- Performance criteria

### 🔗 How to Load
- Specific spec: `@.claude/specs/[spec-name].md`
- All relevant: `/load-context`
- Validate code: `/check-standards`
```

## Error Handling

### No Specs Directory
```markdown
## No Project Specs Found

No `.claude/specs/` directory in this project.

### 🚀 Get Started
1. Run `/init-project` to set up structure
2. Or manually: `mkdir -p .claude/specs`
3. Add specs using `@templates/spec-template.md`

### 📚 Global Resources
Available guides:
- `@guides/project-setup.md` - Setup instructions
- `@templates/spec-template.md` - Spec template
```

## Related Commands

- `/init-project` - Initialize .claude/ structure  
- `/load-context` - Load relevant specs
- `/check-standards` - Validate against specs