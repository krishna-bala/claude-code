# CLAUDE.md

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

**Detailed Guidelines**: @practices/code-review.md

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

Read `core/tdd.md` for full instructions.

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

- **architecture.md**: System design and component relationships
- **patterns.md**: Code patterns, conventions, and best practices
- **workflows.md**: Common development workflows and procedures
- **decisions.md**: Architectural decision records (ADRs)
- **testing.md**: Testing strategies and frameworks used
- **deployment.md**: Build, deployment, and environment setup
- **plan-{feature}.md**: Feature-specific development plans, roadmaps, and task prioritization (e.g., `plan-auth.md`, `plan-optimization.md`)

Reference these files in `CLAUDE.md` using the `@path/to/file.md` syntax to ensure the agent can quickly access relevant context when resuming work.

## Documentation Workflow

Follow the documentation philosophy, @core/documentation.md

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

### Git & Code Review
- **Making commits**: "Reference commit guidance" → loads @commands/commit-staged.md or @commands/commit.md
- **Pull requests**: "Reference PR guidance" → loads @commands/pr-description.md or @commands/pr-review.md  
- **Code review standards**: "Reference code review practices" → loads @practices/code-review.md

### Development Practices
- **Testing approach**: "Reference testing guidance" → loads @core/tdd.md or @core/testing.md
- **Documentation work**: "Reference documentation philosophy" → loads @core/documentation.md
- **New CLAUDE.md files**: "Reference CLAUDE.md template" → loads @core/claude-md-template.md

### Analysis & Planning
- **Complex problems**: Use `/deep-understanding` command
- **Session reflection**: Use `/reflect` command
- **Context optimization**: Use `/optimize-context` command

**Usage Pattern**: Ask me to "Reference [topic] guidance" or use slash commands to load relevant context only when needed.

### Directory Structure

- **commands/**: Slash commands available via `/` in Claude Code
- **core/**: Essential development guidelines and templates
- **practices/**: Engineering best practices and code review guidelines

### Key Resources

**Documentation**: @core/documentation.md - Philosophy for organizing docs
**TDD**: @core/tdd.md - Test-driven development principles  
**Testing**: @core/testing.md - Testing strategies and patterns
**Template**: @core/claude-md-template.md - Template for new CLAUDE.md files
**Code Review**: @practices/code-review.md - Engineering practices and review guidelines
