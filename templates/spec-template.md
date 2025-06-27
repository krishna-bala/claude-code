# Spec Template

Template for creating specification files. Copy and customize for your standards.

```markdown
# [Language/Tool] Standards

Brief description of what this spec covers.

## Quick Reference

- **Key Principle 1**: Brief explanation
- **Key Principle 2**: Brief explanation  
- **Key Principle 3**: Brief explanation
- **Critical Don't**: What to avoid

## Detailed Guidelines

### [Topic 1]

#### Good Practice
```[language]
// Example of correct implementation
```

#### Bad Practice
```[language]
// Example of what to avoid
```

### [Topic 2]

Key points about this topic:
- Point 1
- Point 2
- Point 3

### [Topic 3]

Description and guidelines.

## Common Patterns

### [Pattern Name]
When to use: [Situation]
```[language]
// Pattern example
```

## Integration Points

- **With [Tool]**: How this integrates
- **With [Framework]**: Compatibility notes

## Context Triggers

**Load this spec when:**
- Working with *.[extension] files
- [Specific scenario]
- [Problem indicator]

**Common issues this helps with:**
- [Issue 1]
- [Issue 2]

## Related Resources

- `@specs/[related-spec].md` - Related standards
- `@guides/[related-guide].md` - Implementation guide
- External: [Official documentation URL]
```

## Customization Guidelines

1. Keep Quick Reference to 3-5 bullet points
2. Include concrete examples (good and bad)
3. Focus on actionable guidelines
4. Target 50-200 lines total
5. Use code examples sparingly
6. Link to detailed external docs

## Example Specs

- Language: python-standards.md, javascript-standards.md
- Tools: docker-practices.md, git-conventions.md
- Architecture: api-design.md, microservices.md