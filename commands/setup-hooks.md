# setup-hooks

Configure project-specific hooks for automatic workflow integration.

## Usage

```
/setup-hooks [type]
```

Types:

- `formatter` - Set up auto-formatting hooks
- `linter` - Set up linting hooks
- `test` - Set up test runner hooks
- `git` - Set up git integration hooks
- `custom` - Interactive setup with all options

## Process

1. **Detect Project Type**

   - Check for package.json (Node.js)
   - Check for pyproject.toml or requirements.txt (Python)
   - Check for Cargo.toml (Rust)
   - Check for go.mod (Go)

2. **Check Existing Tools**

   - Identify installed formatters
   - Find configured linters
   - Detect test frameworks

3. **Generate Configuration**

   - Create or update `.claude/settings.json`
   - Use appropriate matchers for project needs
   - Ensure commands work with project setup

4. **Test Hook Execution**

   - Create test file
   - Trigger hook with sample edit
   - Verify formatter/linter runs

5. **Commit Changes**
   - Add `.claude/settings.json` to git
   - Document hook configuration

## Examples

### Basic Formatter Setup

```bash
/setup-hooks formatter
# Detects prettier, black, rustfmt, etc.
# Creates hooks for auto-formatting
```

### Git Integration

```bash
/setup-hooks git
# Sets up auto-staging of edited files
# Adds pre-commit validation hooks
```

### Custom Interactive Setup

```bash
/setup-hooks custom
# Prompts for each hook type
# Allows custom command configuration
```

## Hook Types

### Formatter Hooks

- JavaScript/TypeScript: prettier
- Python: ruff (preferred), black, autopep8
- Rust: rustfmt
- Go: gofmt
- Markdown: prettier

### Linter Hooks

- JavaScript/TypeScript: eslint
- Python: pylint, flake8
- Rust: clippy
- Go: golint

### Test Hooks

- JavaScript: jest, mocha
- Python: pytest, unittest
- Rust: cargo test
- Go: go test

### Git Hooks

- Auto-stage modified files
- Validate commit messages
- Run pre-commit checks

## Configuration Template

Uses `~/.claude/docs/templates/project-hooks-template.json` as base.

## Best Practices

1. Start with formatters only
2. Add linters after team agreement
3. Test hooks don't slow down editing
4. Document hook behavior in README

## Related

- `docs/automation/hooks-and-automation.md` - Full hook documentation
- `docs/automation/hooks-automation.md` - Quick reference
- `docs/templates/project-hooks-template.json` - Configuration template
