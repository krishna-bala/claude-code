# Command and Agent Framework - Quick Reference

## At a Glance

### Before: 12 Commands 🤯
```
/analyze, /commands, /debug, /documentation, /generate-command,
/generate-pr, /improve, /init-project, /madr, /memory-framework,
/review, /test
```

### After: 2 Commands + Specialized Agents 🎯
```
Commands: /madr, /analyze
Agents: 50+ specialized assistants for every need
```

## When to Use What

### Use Commands For:

#### `/madr` - Architecture Decision Records
```bash
# When making architectural decisions
/madr

# Creates structured decision documentation
# Unique functionality not available in agents
```

#### `/analyze` - Smart Analysis & Routing
```bash
# When you need help but don't know which agent
/analyze

# Examines your code/context
# Suggests appropriate specialized agents
# General-purpose entry point
```

### Use Agents For:

Everything else! Agents provide specialized, focused assistance.

## Quick Decision Tree

```
Need help?
├─ Making an architectural decision? → /madr
├─ Don't know what you need? → /analyze
└─ Know your specific need? → @agents/[agent-name].md
```

## Common Scenarios

### Scenario: Code Review
```markdown
Old way: /review
New way: @agents/code-reviewer.md
Discovery: /analyze → suggests code-reviewer
```

### Scenario: Writing Tests
```markdown
Old way: /test
New way: @agents/test-automator.md
Discovery: /analyze → suggests test-automator
```

### Scenario: Debugging Issues
```markdown
Old way: /debug
New way: @agents/debugger.md
Discovery: /analyze → suggests debugger
```

### Scenario: Learning the Framework
```markdown
Old way: /commands, /documentation, /memory-framework
New way: @agents/memory-framework.md
Discovery: Just ask about the framework!
```

## Agent Categories

### Development
- `code-reviewer` - Code quality and best practices
- `test-automator` - Test creation and TDD
- `debugger` - Error diagnosis and fixes
- `refactoring-assistant` - Code improvement

### Architecture
- `backend-architect` - System design
- `api-documenter` - API documentation
- `database-optimizer` - Database design
- `cloud-architect` - Cloud patterns

### Specialized Languages
- `python-pro` - Python expertise
- `javascript-pro` - JavaScript/TypeScript
- `rust-pro` - Rust systems programming
- `golang-pro` - Go development

### Operations
- `devops-troubleshooter` - Infrastructure issues
- `performance-engineer` - Optimization
- `security-auditor` - Security review
- `incident-responder` - Production issues

## Migration Cheat Sheet

| If you used to use... | Now use... |
|----------------------|------------|
| `/commands` | @agents/memory-framework.md |
| `/documentation` | @agents/memory-framework.md |
| `/memory-framework` | @agents/memory-framework.md |
| `/review` | @agents/code-reviewer.md |
| `/test` | @agents/test-automator.md |
| `/debug` | @agents/debugger.md |
| `/generate-pr` | @agents/pr-generator.md |
| `/improve` | /analyze → appropriate agent |

## Pro Tips

1. **Start with /analyze** when unsure - it's smart about routing
2. **Reference agents directly** when you know what you need
3. **Agents can suggest other agents** for related tasks
4. **Keep /madr** in mind for documenting important decisions

## Example Workflows

### Complete Code Review Workflow
```markdown
1. User: "Review my authentication module"
2. Assistant: Let me analyze this first with /analyze
3. /analyze: "I see security-sensitive code. Suggesting:"
   - @agents/code-reviewer.md for general review
   - @agents/security-auditor.md for security specifics
4. User references suggested agents for specialized review
```

### Test-Driven Development Workflow
```markdown
1. User: "Help me write tests for this function"
2. Assistant: @agents/test-automator.md provides TDD workflow
3. Agent helps write tests first, then implementation
4. If tests fail: Agent suggests @agents/debugger.md
```

## Remember

- **Fewer commands = Less cognitive load**
- **Specialized agents = Better assistance**
- **Clear pathways = Faster task completion**
- **Always available**: This guide at @docs/architecture/command-agent-quick-reference.md