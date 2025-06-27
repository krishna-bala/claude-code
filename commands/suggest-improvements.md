# Suggest Improvements

Provide context-aware suggestions for code improvements based on project patterns and best practices.

## Usage

Request suggestions for improving code quality, performance, or maintainability.

## Process

1. **Analyze Current Context**
   - Review current file or selection
   - Check surrounding code patterns
   - Identify improvement opportunities

2. **Load Relevant Guidance**
   - Project-specific patterns
   - Language best practices
   - Performance guidelines
   - Security considerations

3. **Generate Suggestions**
   - Code structure improvements
   - Performance optimizations
   - Readability enhancements
   - Pattern consistency

4. **Prioritize and Present**
   - High-impact improvements first
   - Consider effort vs benefit
   - Provide implementation examples

## Context Loading

Automatically considers:
- Project CLAUDE.md patterns
- Language-specific standards
- Recent code review feedback
- Common issues in codebase

## Output Format

```markdown
## Improvement Suggestions

### 🎯 High Priority
1. **[Improvement Name]**
   - Why: [Benefit explanation]
   - How: [Implementation approach]
   ```[language]
   // Example implementation
   ```

### 🔧 Code Quality
- **[Pattern improvement]**: [Description]
- **[Refactoring opportunity]**: [Description]

### ⚡ Performance
- **[Optimization]**: [Impact and approach]

### 🛡️ Security
- **[Security improvement]**: [Risk and mitigation]

### 📚 References
- Related spec: `@.claude/specs/[spec].md`
- Pattern guide: `@.claude/guides/[guide].md`
```

## Examples

### Example: Python Function
Input: Complex function with multiple responsibilities
Output: Suggest splitting into smaller functions, add type hints

### Example: Configuration File
Input: Hardcoded values in config
Output: Suggest environment variables, validation

## Related Commands

- `/check-standards` - Validate against specs
- `/analyze-deep` - Deep code analysis