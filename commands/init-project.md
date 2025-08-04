Set up `<project>/.claude/` directory structure for context-aware development in the current project.

---

Initialize project memory framework with basic structure and CLAUDE.md template. Run from project root to quickly set up the memory framework with placeholders for manual customization.

- **Template**: @~/.claude/templates/project-claude.md

## Process

1. **Create Directory Structure**

   ```bash
   mkdir -p .claude/{agents,commands,docs,templates}
   ```

2. **Copy Base CLAUDE.md Template**

   - Copy template from `~/.claude/templates/project-claude.md`
   - Keep all placeholders for manual customization
   - No auto-detection or replacement

3. **Provide Clear Next Steps**
   - Explain what needs customization
   - Give specific guidance on common patterns

## Output Format

<output>

## Project Initialized ✅

### Created Structure

```
.claude/
├── agents/
├── commands/
├── CLAUDE.md           # Project context (customize this!)
├── docs/
└── templates/
```

### Next Steps (Required)

1. **Edit `.claude/CLAUDE.md`** - Replace all `[PLACEHOLDERS]` with your project details:

   - `[PROJECT NAME]` - Your project name
   - `[BUILD_COMMAND]` - How to build (e.g., `npm run build`, `make`, `cargo build`)
   - `[TEST_COMMAND]` - How to run tests (e.g., `npm test`, `pytest`, `go test`)
   - `[LINT_COMMAND]` - Linting command (e.g., `eslint .`, `flake8`)
   - `[DEV_COMMAND]` - Development server (e.g., `npm start`, `python manage.py runserver`)

2. **Add Project Documentation** - Create files in `.claude/docs/` for:

   - Architecture overview
   - API documentation
   - Deployment guides

3. **Create Project Commands** - Add `.md` files in `.claude/commands/` for:

   - Custom workflows
   - Project-specific shortcuts

4. **Commit to Version Control** - Add `.claude/` to your repository

### Common Customizations

**Web Projects**: Include build, test, lint, and dev server commands
**Backend APIs**: Include database migration, seed data, and API documentation
**CLI Tools**: Include build, test, and usage examples
**Libraries**: Include build, test, publish, and example usage

</output>

## Validation

- `.claude/` directory structure is created successfully
- Base `CLAUDE.md` template is copied with placeholders intact
- Basic README files are created in subdirectories
- No files are overwritten if `.claude/` already exists

## Examples

<example-1>

```
**Input**: `/init-project` (in any project)
**Output**: Creates .claude/ structure with template CLAUDE.md containing placeholders to fill in
```

</example-1>
