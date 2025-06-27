# Check Standards

Validate current code against project specifications and standards.

## Usage

Run when you want to ensure code follows established patterns and conventions.

## Process

1. **Identify Context**
   - Check for `.claude/` directory in project
   - Identify file types in current changes
   - Review git diff for modified files

2. **Load Relevant Specs**
   - Load project CLAUDE.md if exists
   - Load language-specific specs based on file types
   - Load any explicitly referenced standards

3. **Analyze Code**
   - Check against loaded specifications
   - Identify good practices being followed
   - Note deviations from standards
   - Suggest improvements

4. **Report Results**
   - Present findings in structured format
   - Prioritize by importance
   - Provide actionable feedback

## Context Loading

Always loads if available:
- `.claude/CLAUDE.md` from project root
- `.claude/specs/README.md` for navigation

Conditionally loads based on files:
- Python files: `.claude/specs/python-standards.md`
- JavaScript/TypeScript: `.claude/specs/javascript-standards.md`
- Shell scripts: `.claude/specs/shell-standards.md`
- Config files: `.claude/specs/config-standards.md`

## Output Format

```markdown
## Standards Check Results

### ✅ Good Practices Found
- [File:line] - [Practice description]
- [File:line] - [Practice description]

### ⚠️ Standards Deviations
- [File:line] - [Issue] → [Suggestion]
- [File:line] - [Issue] → [Suggestion]

### 📖 Relevant Guidelines
- Review: `@.claude/specs/[relevant-spec].md`
- Reference: [Specific section]

### 💡 Suggestions
1. [Improvement suggestion]
2. [Refactoring opportunity]
```

## Related Commands

- `/load-context` - Load project context
- `/suggest-improvements` - Get improvement ideas
- `/list-specs` - See available specifications