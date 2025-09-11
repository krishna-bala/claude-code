---
argument-hint: [MR-####] [context...]
description: Comprehensive code review for PRs, changesets, or local changes with systematic evaluation of quality, design, and maintainability.
---

# Command: /review_prompt_optimized [MR-####] [context...]

- **Standards**: @/home/krishna/.claude/docs/git/code-review.md
- **GitLab CLI**: @/home/krishna/.claude/docs/git/glab.md

## Review Process

### 1. Fetch Repository Context

Use glab to get MR details, description, linked issues:

- Check CI status and existing review comments
- Understand business context and requirements
- Review check statuses and build results

### 2. Analyze Context

Examine the MR/PR to understand:

- The problem being solved (from linked issues)
- The chosen approach (from description)
- Any constraints or trade-offs (from comments)

### 3. Systematic Code Review

Evaluate changes against these criteria:

#### Core Quality

- **Design & Architecture**: System fit and pattern consistency
- **Functionality**: Intended behavior and edge case handling
- **Complexity**: Simplicity and developer comprehension
- **Testing**: Coverage and validation of intended behavior

#### Code Standards

- **Naming & Clarity**: Self-documenting code and useful comments
- **Standards & Style**: Project conventions and error handling
- **Security**: Input validation, authentication, data exposure
- **Performance**: Algorithmic efficiency and resource usage
- **Maintainability**: Organization, modularity, and documentation

### 4. Output Format

<output-template>

## Code Review

### System Context

- **Scope**: [What was reviewed]
- **Platform Context**: [MR metadata, CI status, linked issues]
- **Component Integration**: [How changed components interact in this workflow]
- **Data Flow**: [How information moves through the system with these changes]

### Strengths

- **Design**: [Well-architected aspects]
- **Implementation**: [Quality code practices]
- **Testing**: [Coverage or approach]

### Risk Analysis

- **Failure Modes**: [What could go wrong with these changes]
- **Edge Cases**: [Boundary conditions and error scenarios]
- **State Consistency**: [Synchronization and data integrity concerns]
- **Backward Compatibility**: [Version compatibility and migration risks]

### Areas for Improvement

- **Critical**: [Must-fix issues that could cause failures]
- **Important**: [Should-fix issues affecting maintainability or robustness]
- **Suggestions**: [Nice-to-have improvements for code quality]

### Specific Feedback

[File-by-file comments with line references]

### Assessment

- **Technical Soundness**: [Are the implementation choices appropriate for this problem]
- **Integration Quality**: [How well do the changes work together as a cohesive solution]
- **Production Readiness**: [Confidence level for deployment]

### Recommendation

- **Decision**: Approve | Request changes | Needs discussion
- **Rationale**: [Key factors driving the recommendation]
- **Required changes**: [Must be addressed before merge]
- **Follow-up**: [Post-merge monitoring or future improvements]

</output-template>

## Review Principles

- **Analysis-Driven**: Present technical analysis that guides decision-making rather than front-loading conclusions
- **Context-Aware**: Provide architectural context without over-explaining basics the reviewer should know
- **Risk-Focused**: Examine failure modes, edge cases, and integration challenges
- **Implementation-Specific**: Focus on how technical choices solve this particular problem
- **Actionable**: Provide specific, reasoned feedback with line references and alternatives

## Complex Changeset Analysis

For complex changesets requiring deep architectural analysis:

1. **Gather Business Context First**: Use glab to collect MR metadata (description, linked issues, CI status, comments)
2. **Use Architectural Agents**: Invoke specialized agents with complete context:

```
Task: Analyze the architectural impact of this MR changeset

Business Context:
- MR Description: [from glab]
- Linked Issues: [from glab]
- Requirements: [from description/issues]
- CI Status: [from glab]
- Existing Comments: [from glab]

Git Analysis Instructions:
CRITICAL: You must analyze the actual changes being introduced. Use these commands:
- git diff master...HEAD (shows all changes in this MR)
- git log master..HEAD (shows commits in this branch)
- Focus primarily on modified files and changed code
- Examine related/surrounding code as needed to understand context and implications
- Understand existing patterns the changes build upon or modify

Parallel Agent Invocation:
Launch multiple agents simultaneously in a single message with multiple Task tool calls:
- @agent-boundary-agent - System boundaries and external interactions
- @agent-information-agent - Data architecture and information flow
- @agent-behavior-agent - Runtime behavior and workflows
- @agent-purpose-agent - System goals and requirements
- @agent-structure-agent - Internal architecture and components
```
