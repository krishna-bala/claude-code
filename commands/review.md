Comprehensive code review workflow for PRs, working tree changes, or specific branches.

---

Review PRs, working tree changes, or specific branches with structured feedback. Provides systematic evaluation of code quality, design, functionality, and maintainability with constructive suggestions.

## Command Type

analysis - [Complexity: deep]

## Tool Usage

- **Primary**: Read (code files), Bash (git operations), TodoRead (check existing tasks), TodoWrite (track review progress)
- **Secondary**: Grep (search patterns), Glob (find files), WebFetch (check external resources)
- **Avoid**: Edit, Write, MultiEdit (review only, no code changes)

## Context

- **Files**: `~/.claude/context/code-review.md`, `~/.claude/context/pr-guidelines.md`, `~/.claude/context/git-commit-guidelines.md`
- **Patterns**: Code quality standards, design principles, security practices, performance considerations
- **Dependencies**: Project coding standards, team conventions, technology stack requirements

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

## Output

Provides comprehensive code review with structured feedback on design, functionality, code quality, and specific improvement recommendations.

<output-template>

## Code Review

### Overview

- **Scope**: [What was reviewed]
- **Overall assessment**: [High-level evaluation]
- **Recommendation**: [Approve/Request changes/Needs discussion]

### Strengths

- **Design**: [Well-architected aspects]
- **Implementation**: [Quality code practices]
- **Testing**: [Good coverage or approach]

### Areas for Improvement

- **Critical**: [Must-fix issues]
- **Important**: [Should-fix issues]
- **Suggestions**: [Nice-to-have improvements]

### Specific Feedback

- **File: [filename]**: [Specific comments]
- **Security**: [Security-related observations]
- **Performance**: [Performance considerations]

### Next Steps

- **Required changes**: [Must be addressed]
- **Recommendations**: [Suggested improvements]
- **Follow-up**: [Future considerations]

</output-template>

## Validation

- Review covers all major quality dimensions
- Feedback is constructive and actionable
- Security and performance considerations are addressed
- Specific examples and suggestions are provided
- Overall assessment is fair and helpful

## Examples

<example-1>
**Input**: `/review source: feature-branch target: main Authentication refactor`
**Output**: Comprehensive review of authentication changes with security focus and specific recommendations
</example-1>

<example-2>
**Input**: `/review` (local changes)
**Output**: Review of current working directory changes with quality and maintainability feedback
</example-2>
