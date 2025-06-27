# CLAUDE.md

## Memory Framework Architecture

This environment uses a practical memory system with organized specs, guides, and templates for consistent development across projects.

### Framework Overview

- **Global (~/.claude/)**: Universal tools, commands, and workflows
- **Project (<project>/.claude/)**: Language specs, architecture, and project patterns

### Quick Access
- **Standards Check**: `/check-standards` - Validate code against project specs
- **Smart Loading**: `/load-context` - Load relevant guidance based on file types
- **Initialize Project**: `/init-project` - Set up .claude/ structure in projects
- **List Specs**: `/list-specs` - Show available specs in current project

### Session Management
- **Start Session**: `/session-start [name]` - Begin development session tracking
- **Update Session**: `/session-update [notes]` - Record progress and changes
- **End Session**: `/session-end` - Generate comprehensive session summary
- **Current Session**: `/session-current` - View active session status
- **List Sessions**: `/session-list` - See all development sessions

### Framework Resources
- **Guides**: @guides/README.md - Development workflows and patterns
- **Templates**: @templates/README.md - Reusable templates for projects
- **Framework Docs**: @context/memory-framework.md - Complete framework documentation

## Context Loading (Lazy Loading)

Load specific context when needed for tasks. Before performing actions, check if relevant context is loaded:

### Git Operations
- **Before commits**: Load `@context/git-commit-guidelines.md`
- **Before PRs**: Load `@context/pr-guidelines.md`
- **Branch creation**: Check Git Conventions section above

### Code Standards
- **Before editing**: `/load-context` to load project specs
- **Code review**: `/check-standards` to validate against specs
- **New files**: Load relevant language spec from `project/.claude/specs/`

### Development Tasks
- **Testing**: Load `@context/testing.md` or `@context/tdd.md`
- **Debugging**: Load `@guides/debugging-workflows.md`
- **Documentation**: Load `@context/documentation.md`

### How to Load Context
1. Check if you have the needed knowledge
2. Use @-reference to load specific file (remove backticks)
3. Apply loaded guidelines to current task
4. Note: Context persists only for current session

## Git Conventions

- Always prefix branch names with `krishna.<descriptive-name>`. When context exists (like a ticket number, API name, or module name), use `krishna.<context-identifier>.<descriptive-name>`
  - Examples:
    - `krishna.AUTO-4145.fix-login-bug` (ticket context)
    - `krishna.window-api.add-floating-support` (feature/module context)
    - `krishna.add-dark-mode` (simple feature without specific context)

### Git Commit Messages

- Use the `.gitmessage` template (root-level)
- Do not add "🤖 Generated with Claude Code" or "Co-Authored-By: Claude" to commit messages

## Engineering Practices

**Core Principles:**

- **Design**: Well-designed and appropriate for the system
- **Functionality**: Code behaves as intended and serves users well
- **Complexity**: Simplified code that other developers can understand
- **Tests**: Correct and well-designed automated tests
- **Naming**: Clear names for variables, classes, methods
- **Style**: Follows established style guides
- **Documentation**: Updated relevant documentation

**Detailed Guidelines**: `context/code-review.md`

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

Read `context/tdd.md` for full instructions.

## Documentation Strategy

### Documentation Style

- **Be concise and compendious**: Keep all documentation brief and essential
- **Focus on actionable information**: Only document what directly impacts development
- **Avoid verbose explanations**: Use bullet points, short sentences, and minimal prose
- **Prioritize critical context**: Include only the most important architectural decisions and patterns

## Code Documentation Strategy

### Hierarchical `CLAUDE.md` Files

When working in complex codebases (e.g., autonomy stacks, large projects), create CLAUDE.md files at relevant directory levels to provide context-specific guidance:

- **Top-level `CLAUDE.md`**: Overall project architecture and high-level patterns
- **Module-level `CLAUDE.md`**: Specific to major components (e.g., `planner/CLAUDE.md`, `perception/CLAUDE.md`)
- **Sub-module `CLAUDE.md`**: For specialized areas (e.g., `planner/optimization/CLAUDE.md`, `planner/utils/CLAUDE.md`)

Each `CLAUDE.md` should include:

- Purpose and scope of the module/directory
- Key architectural decisions and patterns used
- Important files and their roles
- Dependencies and interfaces with other modules
- Testing approaches and conventions
- Common workflows and development patterns

### Supporting Documentation

Create additional markdown files that can be referenced in `CLAUDE.md` files to help maintain context:

- `architecture.md`: System design and component relationships
- `patterns.md`: Code patterns, conventions, and best practices
- `workflows.md`: Common development workflows and procedures
- `decisions.md`: Architectural decision records (ADRs)
- `testing.md`: Testing strategies and frameworks used
- `deployment.md`: Build, deployment, and environment setup
- `plan-{feature}.md`: Feature-specific development plans, roadmaps, and task prioritization (e.g., `plan-auth.md`, `plan-optimization.md`)

Reference these files in `CLAUDE.md` using the `path/to/file.md` syntax to ensure the agent can quickly access relevant context when resuming work.

## Documentation Workflow

Follow the documentation philosophy, `context/documentation.md`

### Continuous Documentation Updates

- **Update docs as you work**: Modify `CLAUDE.md` files whenever you make significant changes to a codebase
- **Document decisions**: Record architectural choices, pattern changes, and important implementation details
- **Keep context current**: Ensure `CLAUDE.md` accurately reflects the current state of the code

### Regular Commits for Documentation

- **Commit documentation changes separately**: Create dedicated commits for `CLAUDE.md` and supporting documentation updates
- **Use descriptive commit messages**: Follow conventional commit format for documentation changes (e.g., "docs: update `CLAUDE.md` with new authentication patterns")
- **Track documentation history**: Regular commits help maintain a history of how the codebase and its documentation evolved together

This ensures that future work sessions have accurate, up-to-date context and that documentation changes are properly tracked in git history.

## Context Loading Guide

**When you need specific guidance, request these resources:**

### Context Loading Commands

- **TDD Principles**: `/load-tdd`
- **Testing Practices**: `/load-testing`
- **Documentation**: `/load-documentation`
- **CLAUDE.md Template**: `/load-claude-template`
- **Code Review**: `/load-code-review`
- **Commit Guidelines**: `/load-commit`
- **Pull Request**: `/load-pr`
- **Interaction Guidelines**: `/load-interaction`

### Git Operation Commands

- **Interactive Staging**: `/git-stage`
- **Commit Staged**: `/git-commit`
- **Interactive Commit**: `/git-commit-interactive`
- **PR Description**: `/git-pr-description`
- **PR Review**: `/git-pr-review`

### Analysis Commands

- **Deep Understanding**: `/analyze-deep`
- **Session Reflection**: `/analyze-reflect` 
- **Context Optimization**: `/analyze-context`
- **Conversation Summary**: `/analyze-compact`

**Usage Pattern**: Use slash commands to load specific context as needed. Commands can be chained sequentially (e.g., `/load-tdd` → `/load-testing` → work on tests).

### Directory Structure

- `commands/`: Slash commands available via `/` in Claude Code
- `context/`: Essential development guidelines, templates, and best practices

### Key Resources

**Documentation**: `context/documentation.md` - Philosophy for organizing docs
**TDD**: `context/tdd.md` - Test-driven development principles  
**Testing**: `context/testing.md` - Testing strategies and patterns
**Template**: `context/claude-md-template.md` - Template for new CLAUDE.md files
**Code Review**: `context/code-review.md` - Engineering practices and review guidelines

## Server Operations

- Use the filesystem mcp server for read / write / list operations when possible
- Use the time mcp server `mcp__time__get_current_time` for generating timestamps in files and filenames
