List available documentation and suggest relevant files to read based on context.

---

Provides an interactive documentation discovery experience. Lists documentation categories and files in `/home/krishna/.claude/docs/`, suggests relevant docs based on current task or user query, and helps navigate the knowledge base efficiently.

Use with specific topics like `/documentation testing` to get targeted suggestions.

## Process

1. **List main documentation categories** from the docs directory
2. **Analyze current context** to identify relevant topics
3. **Suggest 3-5 most relevant files** with brief descriptions
4. **Offer navigation help** for exploring specific areas

## Output Example

```
## Documentation Overview

### Available Categories
- **git/**: Version control guidelines and workflows
- **testing/**: Testing strategies and TDD practices
- **memory-framework/**: Claude memory system architecture
- **templates/**: Reusable templates for various purposes

### Suggested Reading
Based on your current task:

1. **docs/testing/tdd.md**: Test-driven development principles and practices
2. **docs/testing/testing.md**: Comprehensive testing strategies
3. **docs/git/commit-guidelines.md**: How to write good commit messages

Would you like me to read any of these files or explore a specific category?
```

## Examples

- `/documentation` - General overview with broad suggestions
- `/documentation testing` - Focus on testing-related documentation
- `/documentation git workflow` - Git and workflow specific docs
