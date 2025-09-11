# Code Review Guidelines

## Purpose

Code reviews are a critical part of our development process, ensuring code quality, knowledge sharing, and maintaining consistent standards across the codebase.

## Review Principles

### What to Look For

1. **Design & Architecture**

   - Is the code well-designed and appropriate for the system?
   - Does it follow established patterns and conventions?
   - Are there potential scalability or performance concerns?

2. **Functionality**

   - Does the code do what it's supposed to do?
   - Are edge cases handled appropriately?
   - Is error handling comprehensive?

3. **Code Quality**

   - Is the code readable and maintainable?
   - Could it be simplified without losing functionality?
   - Are there any code smells or anti-patterns?

4. **Testing**

   - Are tests comprehensive and meaningful?
   - Do tests cover edge cases and error conditions?
   - Is the test coverage appropriate for the changes?

5. **Documentation**
   - Are complex logic and decisions documented?
   - Is the code self-documenting through good naming?
   - Are API changes reflected in documentation?

## Review Process

### For Reviewers

1. **Understand Context**

   - Read the PR description thoroughly
   - Understand the problem being solved
   - Check linked issues or tickets

2. **Review Systematically**

   - Start with high-level design
   - Check critical paths first
   - Look for potential bugs or security issues
   - Verify tests are adequate

3. **Provide Constructive Feedback**

   - Be specific and actionable
   - Suggest improvements, don't just criticize
   - Distinguish between must-fix and nice-to-have
   - Acknowledge good practices

4. **Consider the Author**
   - Be respectful and professional
   - Remember there's a person behind the code
   - Focus on the code, not the coder

## Best Practices

### Effective Reviews

- Batch similar comments
- Use code suggestions when appropriate

### Communication

- Use clear, unambiguous language
- Prefix comments with severity:
  - **MUST**: Critical issues that block approval
  - **SHOULD**: Important improvements
  - **CONSIDER**: Suggestions for enhancement
  - **NIT**: Minor style or preference issues
