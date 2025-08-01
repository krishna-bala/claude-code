**DEPRECATED**: This command has been migrated to the memory-framework agent.

---

**Use instead**: `@agent-memory-framework` with requests like:
- "show me available commands"
- "commands for git"
- "what testing commands exist?"

The memory-framework agent now provides enhanced command discovery with better context analysis and grouping.

---

## Legacy Functionality (now in memory-framework agent)

Provides command discovery and navigation. Lists all available commands in `/home/krishna/.claude/commands/`, groups them by purpose, and suggests relevant commands based on your current task or query.

## Process

1. **List all available commands** from the commands directory
2. **Group by purpose** (git, testing, analysis, generation, etc.)
3. **Analyze context** to suggest most relevant commands
4. **Provide brief descriptions** of what each command does

## Output Example

```
## Available Commands

### Git & Version Control
- **/git-commit**: Enhanced staging and atomic commit workflow
- **/generate-pr**: Generate pull request with comprehensive description

### Testing & Quality
- **/test**: Complete testing workflow with TDD practices
- **/review**: Comprehensive code review following best practices

### Analysis & Improvement
- **/analyze**: Deep code analysis with actionable insights
- **/improve**: Intelligently improve code, docs, and workflows

### Project Setup
- **/init-project**: Initialize project with Claude memory framework
- **/setup-hooks**: Configure git hooks for automation

### Suggested Commands
Based on your current context:

1. **/test** - Set up testing for your new feature
2. **/git-commit** - Create atomic commits for your changes
3. **/review** - Review code before committing

Type any command to use it, or ask for more details about a specific command.
```

## Examples

- `/commands` - Show all commands grouped by category
- `/commands testing` - Focus on testing-related commands
- `/commands git` - Show git and version control commands
- `/commands new` - Show commands for new projects or features
