# CLAUDE.md

## Git Conventions

- Always prefix branch names with `krishna.<descriptive-name>`. When context exists (like a ticket number, API name, or module name), use `krishna.<context-identifier>.<descriptive-name>`
  - Examples:
    - `krishna.AUTO-4145.fix-login-bug` (ticket context)
    - `krishna.window-api.add-floating-support` (feature/module context)
    - `krishna.add-dark-mode` (simple feature without specific context)

### Git Commit Messages

- Use the `.gitmessage` template, `~/.claude/agent-instructions/.gitmessage`
- Do not add "🤖 Generated with Claude Code" or "Co-Authored-By: Claude" to commit messages

## Code Review Practices

Read the following file for detailed code review practices:
`~/.claude/agent-instructions/eng-practices/review/index.md`

<!-- IMPORTANT: Follow these developer guidelines when making changes, creating commits, or preparing pull requests -->

### Developer Guidelines

Read the following files for detailed developer guidelines:
`~/.claude/agent-instructions/eng-practices/review/developer/index.md`
`~/.claude/agent-instructions/eng-practices/review/developer/cl-descriptions.md`
`~/.claude/agent-instructions/eng-practices/review/developer/handling-comments.md`
`~/.claude/agent-instructions/eng-practices/review/developer/small-cls.md`

### Reviewer Guidelines

Read the following files for detailed reviewer guidelines:
`~/.claude/agent-instructions/eng-practices/review/reviewer/index.md`
`~/.claude/agent-instructions/eng-practices/review/reviewer/looking-for.md`
`~/.claude/agent-instructions/eng-practices/review/reviewer/comments.md`
`~/.claude/agent-instructions/eng-practices/review/reviewer/standard.md`
`~/.claude/agent-instructions/eng-practices/review/reviewer/speed.md`
`~/.claude/agent-instructions/eng-practices/review/reviewer/navigate.md`
`~/.claude/agent-instructions/eng-practices/review/reviewer/pushback.md`

## Interaction Guidelines

- Start with understanding over implementation:
  - First clarify the core need and success criteria
  - Present a high-level approach for validation before detailed work
  - For complex requests, outline key steps/components first
  - Seek explicit feedback at decision points
  - Implement incrementally rather than attempting to solve everything at once
  - Recognize when simple requests can be addressed directly
  - When assumptions must be made, make them explicit
  - Prioritize early course correction over perfect first attempts

## Test Driven Development (TDD)

Read `~/.claude/agent-instructions/tdd-ai-instructions.md` for full instructions.
