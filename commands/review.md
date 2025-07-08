# Review - Comprehensive code review workflow for any changes

Review PRs, working tree changes, or specific branches with structured feedback.

**Read context from:**
- `~/.claude/context/code-review.md`
- `~/.claude/context/pr-guidelines.md`
- `~/.claude/context/git-commit-guidelines.md`

Usage:
- `/review source: feature-branch target: main <additional-context>`
- `/review PR #123 <additional-context>`
- `/review <local changes description>`

## Review Focus Areas

### Design & Architecture
- Is the code well-designed and appropriate for the system?
- Does it fit well with existing architecture patterns?
- Are design decisions well-motivated?

### Functionality
- Does the code behave as intended?
- Is the behavior good for users?
- Are edge cases handled properly?

### Complexity
- Could the code be made simpler?
- Would other developers easily understand this code?
- Is the complexity justified by the problem being solved?

### Testing
- Does the code have correct and well-designed tests?
- Are test cases comprehensive?
- Do tests actually validate the intended behavior?

### Naming & Clarity
- Are variable, class, and method names clear?
- Are comments clear and useful?
- Is the code self-documenting where possible?

### Standards & Style
- Does the code follow project style guides?
- Are there any violations of team standards?
- Is error handling appropriate and consistent?

## Review Process

1. **Understand the Context**
   - What problem is being solved?
   - What approach was taken?
   - Are there any constraints or trade-offs?

2. **Review Changes Systematically**
   - Check overall structure first
   - Review individual changes in detail
   - Look for patterns and consistency

3. **Evaluate Against Standards**
   - Code quality and maintainability
   - Security considerations
   - Performance implications
   - Documentation completeness

4. **Provide Constructive Feedback**
   - Be specific and actionable
   - Explain reasoning for suggestions
   - Acknowledge good practices
   - Suggest improvements, not just problems

## Review Guidelines

### Be Constructive
- Focus on the code, not the person
- Provide specific, actionable feedback
- Explain the "why" behind suggestions
- Acknowledge positive aspects

### Be Thorough
- Review for correctness and style
- Consider maintainability and readability
- Check for security and performance issues
- Verify tests are adequate

### Be Respectful
- Use a collaborative tone
- Ask questions to understand intent
- Offer suggestions, not demands
- Be open to discussion

## Common Review Items

### Security
- Input validation and sanitization
- Authentication and authorization
- Data exposure and privacy
- Injection vulnerabilities

### Performance
- Algorithmic efficiency
- Resource usage
- Caching strategies
- Database query optimization

### Maintainability
- Code organization and structure
- Documentation and comments
- Error handling and logging
- Testability and modularity