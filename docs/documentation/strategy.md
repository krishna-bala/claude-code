# Documentation Strategy

Guidelines for creating and maintaining documentation in projects.

## Documentation Style

- **Be concise and compendious**: Keep all documentation brief and essential
- **Focus on actionable information**: Only document what directly impacts development
- **Avoid verbose explanations**: Use bullet points, short sentences, and minimal prose
- **Prioritize critical context**: Include only the most important architectural decisions and patterns

## Code Documentation Strategy

### Hierarchical `CLAUDE.md` Files

When working in complex codebases (e.g., autonomy stacks, large projects), create `CLAUDE.md` files at relevant directory levels to provide context-specific guidance:

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
- `testing.md`: Testing strategies and frameworks used
- `deployment.md`: Build, deployment, and environment setup
- `plan-{feature}.md`: Feature-specific development plans (e.g., `plan-auth.md`, `plan-optimization.md`)

#### Decision Documentation

Use Any Decision Records (ADRs) to document significant decisions:

- **Complex decisions**: Use `templates/madr-template.md` (full template)
- **Simple decisions**: Use `templates/madr-template-minimal.md` (minimal template)
- **Organization**: Store ADRs in a `decisions/` directory within the project
- **Naming**: Use format `NNNN-title-of-decision.md` (e.g., `0001-choice-of-database.md`)

ADRs should capture:

- Context and problem statement
- Considered options and their trade-offs
- Final decision and justification
- Consequences of the decision

Reference these files in `CLAUDE.md` using relative paths to enable quick access to relevant context.

## Documentation Workflow

Follow the documentation philosophy outlined above

### Continuous Documentation Updates

- **Update docs as you work**: Modify `CLAUDE.md` files whenever you make significant changes to a codebase
- **Document decisions**: Record architectural choices, pattern changes, and important implementation details
- **Keep context current**: Ensure `CLAUDE.md` accurately reflects the current state of the code

### Regular Commits for Documentation

- **Commit documentation changes separately**: Create dedicated commits for `CLAUDE.md` and supporting documentation updates
- **Use descriptive commit messages**: Follow conventional commit format for documentation changes (e.g., "docs: update `CLAUDE.md` with new authentication patterns")
- **Track documentation history**: Regular commits help maintain a history of how the codebase and its documentation evolved together

This ensures that future work sessions have accurate, up-to-date context and that documentation changes are properly tracked in git history.
