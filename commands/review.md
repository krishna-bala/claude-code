---
argument-hint: [PR/MR number, URL, source..target] [context...]
description: Professional code review walkthrough that explains changes while highlighting concerns inline
---

# Command: /review [PR/MR number, URL, source..target] [context...]

Provides a narrative walkthrough of changesets that helps reviewers understand the implementation while identifying areas needing attention.

- **Standards**: @/home/krishna/.claude/docs/git/code-review.md
- **GitHub CLI**: @/home/krishna/.claude/docs/git/gh.md
- **GitLab CLI**: @/home/krishna/.claude/docs/git/glab.md
- **Jira CLI**: @/home/krishna/.claude/docs/tools/jira-foxbots.md

## Review Process

### 1. Detect Review Context

Automatically detect the review source:

- GitHub PR (via gh CLI) - if .git/config contains github.com
- GitLab MR (via glab CLI) - if .git/config contains gitlab
- Local uncommitted changes - if no PR/MR specified
- Commit range - if specified like `main..feature-branch`

### 2. Gather Full Context

For PRs/MRs, collect:

- Description and linked issues
- CI/build status
- Existing comments and discussions
- Base branch for comparison
- Reference Jira tickets and documentation

For local changes:

- Working directory modifications
- Staged vs unstaged changes
- Recent commit context

### 3. Generate Narrative Walkthrough

Create a professional narrative that:

- Explains what changed and why
- Describes how the implementation works
- Highlights concerns inline as they arise
- Identifies areas needing human judgment

## Output Format

### Change Overview

Brief summary of what this changeset accomplishes and which components it affects.

### Implementation Walkthrough

#### [Component/Feature Area]

Natural prose explanation of the changes in this area. The implementation [describe what it does and how], using [approach/pattern] to achieve [goal]. This integrates with existing [components] by [integration approach].

[CONCERN/RISK/LIMITATION tags inline where issues arise]

The approach [explain key decisions and tradeoffs]. This means [implications for the system].

#### [Next Component/Feature Area]

Continue the narrative through each logical section of changes...

### Critical Paths

Describe the key execution flows, request paths, or state transitions affected by these changes. Explain how data flows through the modified components and where edge cases or failure modes might occur.

### Areas Requiring Human Judgment

🔍 **[Category]**: [Specific concern that needs human review]
🔍 **[Category]**: [Another area needing attention]

Categories might include: Safety/Reliability, Performance, Architecture, Business Logic, Error Handling, etc.

### Recommended Deep-Dive Areas

List specific files or functions that warrant closer inspection, with brief explanations of why.

## Narrative Principles

1. **Professional Tone**: Factual and direct without superlatives
2. **Natural Flow**: Complete paragraphs, not bullet points with line numbers
3. **Integrated Analysis**: Concerns raised inline within explanation
4. **Context Building**: Explain the whole before critiquing parts
5. **Clear Markers**: Use [CONCERN], [RISK], [LIMITATION], [NOTE] consistently

## Example Output Snippet

```markdown
### Authentication System Refactor

The authentication system now supports OAuth2 alongside the existing session-based
approach. The OAuth2 flow in auth/oauth.py starts with an authorization endpoint
that constructs provider URLs using hardcoded client credentials [CONCERN: should
use environment variables]. When providers redirect back, the callback handler
exchanges authorization codes for tokens and creates or updates user records.

The implementation links OAuth identities to existing users by email matching
without verification [RISK: enables account takeover if attacker controls email].
It reuses the existing User model rather than creating separate OAuth identity
tables, which simplifies the data model but prevents users from linking multiple
social accounts [LIMITATION: one provider per user].

The session system required minimal changes. A new auth_type field tracks how users
authenticated, allowing the same middleware to handle both OAuth and password-based
sessions transparently. This unification means OAuth users receive standard session
timeouts rather than leveraging refresh tokens [LIMITATION: loses persistent auth benefit].
```

## Complex Changeset Handling

For large or complex changesets, invoke the following specialized agents in parallel to analyze different aspects:

- @agent-boundary-agent
- @agent-structure-agent
- @agent-information-agent
- @agent-purpose-agent
- @agent-behavior-agent

**In order to launch agents in parallel, you MUST invoke multiple agents in a SINGLE command.**

```
Task: Analyze the architectural impact of this changeset

Context:
- PR/MR Description: [from gh/glab]
- Linked Issues: [from gh/glab]
- CI Status: [from gh/glab]

Analysis Focus:
- Examine actual changes via git diff
- Understand integration with existing patterns
- Identify systemic implications

Parallel Analysis Areas:
- System boundaries and external interactions
- Data flow and state management
- Performance and reliability implications
- Safety considerations for robotics systems
```

## Usage Examples

```bash
# Review a GitHub PR
/review 1234

# Review a GitLab MR
/review 567

# Review local uncommitted changes
/review

# Review specific commit range
/review main..feature-branch

# Review with additional context
/review 1234 Focus on the state machine changes
```
