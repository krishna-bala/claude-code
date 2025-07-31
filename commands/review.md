Comprehensive code review workflow for PRs, working tree changes, or specific branches.

---

Review PRs, working tree changes, or specific branches with structured feedback. Provides systematic evaluation of code quality, design, functionality, and maintainability with constructive suggestions.

## Command Type

analysis - [Complexity: deep]

## Tool Usage

- **Primary**: Read (code files), Bash (git operations), **gh/glab (repository context)**, TodoRead (check existing tasks), TodoWrite (track review progress)
- **Repository**: **gh pr view, gh pr checks, gh issue view** (GitHub) / **glab mr show, glab ci status** (GitLab)
- **Secondary**: Grep (search patterns), Glob (find files), WebFetch (check external resources)
- **Avoid**: Edit, Write, MultiEdit (review only, no code changes)

## Context

- **Files**: @docs/git/code-review.md, @docs/git/pr-guidelines.md, @docs/git/commit-guidelines.md
- **Platform**: **GitHub/GitLab PR context, CI status, linked issues, review history**
- **Patterns**: Code quality standards, design principles, security practices, performance considerations
- **Dependencies**: Project coding standards, team conventions, technology stack requirements, **platform-specific workflows**

**Note**: This command benefits from focused execution. Consider using with Task tool for sub-agent delegation for deep analysis.

Usage:

- `/review PR #123` - **Fetches PR context via gh/glab, analyzes changes with platform metadata**
- `/review https://github.com/owner/repo/pull/123` - **Direct PR URL review with full context**
- `/review source: feature-branch target: main <additional-context>` - **Enhanced with repository context**
- `/review <local changes description>` - **Local changes with repository context if available**

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

1. **Fetch Repository Context**

   - Use gh/glab to get PR details, description, linked issues
   - Check CI status and existing review comments
   - Understand business context and requirements

2. **Analyze Platform Metadata**

   - Review check statuses and build results
   - Examine existing review feedback
   - Identify related issues and discussions

3. **Understand the Context**

   - What problem is being solved? (from linked issues)
   - What approach was taken? (from PR description)
   - Are there any constraints or trade-offs? (from comments)

4. **Review Changes Systematically**

   - Check overall structure with platform context
   - Review individual changes with CI feedback
   - Look for patterns and consistency with team standards

5. **Evaluate Against Standards**

   - Code quality and maintainability
   - Security considerations
   - Performance implications
   - Documentation completeness

6. **Provide Constructive Feedback**
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
- **Platform Context**: [PR/MR metadata, linked issues, CI status]
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
- **CI/Platform**: [Build status, check results, platform-specific observations]

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
