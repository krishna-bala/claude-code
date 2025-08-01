# 0005 - Command-Based Context Loading System

**Status:** Accepted
**Date:** 2025-07-30
**Deciders:** Krishna

## Context and Problem Statement

The Claude memory framework was experiencing context bloat with large CLAUDE.md files containing extensive @-references to documentation. This resulted in loading unnecessary context for specific tasks and made it difficult to maintain focused, specialized workflows. We needed a system that could load context on-demand while supporting task-specific agent delegation.

## Considered Options

- Keep current monolithic CLAUDE.md with all context loaded upfront
- Implement command-based context loading with on-demand documentation
- Create completely separate specialized agents for each task type
- Use a hybrid approach with minimal base context and command-triggered loading

## Decision Outcome

Chosen option: "Implement command-based context loading with sub-agent delegation", because it provides the best balance of context efficiency, task specialization, and system scalability while maintaining clear boundaries between different workflows.

### System Design

**Philosophy:**

- **Minimal Base Context**: Only essential principles and navigation loaded by default
- **Command-Based Loading**: Additional context loaded on-demand via commands
- **Sub-Agent Delegation**: Specialized agents for focused tasks with specific context
- **Clear Boundaries**: Each agent has exactly the context it needs, nothing more

**Command Structure:**

**Format:** `/<command-name> [sub-agent]`

- Without `sub-agent`: Loads context into current session
- With `sub-agent`: Delegates to specialized agent with specific context

**Directory Structure:**

```
~/.claude/commands/
├── tdd.md              # Test-driven development command
├── git-pr.md           # Git pull request workflow
├── refactor.md         # Refactoring patterns
├── debug.md            # Debugging workflows
├── architecture.md     # Architecture decisions
└── ...
```

### Consequences

- Good, because it reduces context bloat by loading only relevant information for specific tasks
- Good, because it enables specialized agents with focused expertise for different workflows
- Good, because it provides clear boundaries preventing context pollution between different task types
- Good, because it's scalable and makes it easy to add new commands and specializations
- Good, because commands are self-documenting and discoverable
- Bad, because it requires initial setup and migration effort from existing monolithic approach
- Bad, because it introduces complexity in the command loading mechanism
- Bad, because it may require users to learn command patterns for optimal usage

### Implementation Details

**Command Types:**

1. **Context Loading**: `/<command-name>` loads context into current session
2. **Sub-Agent Delegation**: `/<command-name> sub-agent` creates specialized focused agent

**Core Commands Planned:**

- `/tdd` - Test-driven development workflows
- `/git-pr` - Pull request and git workflows
- `/refactor` - Code refactoring patterns
- `/debug` - Debugging methodologies
- `/architecture` - Architecture decision processes

**Migration Strategy:**

1. Maintain existing CLAUDE.md files during transition
2. Gradually move detailed context from base files to command-specific files
3. Update base CLAUDE.md to reference the new command system
4. Implement incremental rollout with testing at each phase
