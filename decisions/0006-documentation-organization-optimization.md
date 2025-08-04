# 0006 - Documentation Organization Optimization

**Status:** Accepted
**Date:** 2025-07-30
**Deciders:** Krishna

## Context and Problem Statement

The Claude memory framework had functional documentation and command systems, but organization could be improved for better discoverability and context efficiency. Users needed better ways to navigate available documentation and commands, while maintaining clear separation between general guidelines (docs) and execution instructions (commands). The goal was iterative refinement rather than major architectural changes.

## Considered Options

- Keep current system as-is with existing @-references and organization
- Implement discovery commands for better navigation of docs and commands
- Create completely new documentation architecture
- Add smart context loading with improved @-reference usage in commands

## Decision Outcome

Chosen option: "Implement discovery commands with improved organization", because it provides better navigation and discoverability while maintaining the existing functional architecture and requiring minimal breaking changes.

### Consequences

- Good, because it improves navigation through discovery commands without breaking existing workflows
- Good, because it maintains clear separation between documentation (guidelines) and commands (execution)
- Good, because it enables smart context loading where commands reference only relevant documentation
- Good, because it requires no major architectural changes, preserving existing investments
- Good, because it's pragmatic and focuses on incremental improvements
- Bad, because it requires creating and maintaining additional discovery commands
- Bad, because it may initially add some complexity for users learning the new navigation patterns

### Implementation Details

**Organizational Structure (Maintained):**

```
/home/krishna/.claude/
├── CLAUDE.md                    # Base context with @-references
├── commands/                    # Command definitions with workflows
│   ├── documentation.md        # NEW: Lists and suggests docs
│   ├── commands.md            # NEW: Lists available commands
│   ├── test.md                # Testing workflow with @-refs to docs
│   ├── git-commit.md          # Commit workflow with @-refs to docs
│   └── ...
└── docs/                       # Existing documentation
    ├── testing/               # Testing guidelines and philosophy
    ├── git/                   # Git conventions and standards
    ├── memory-framework/      # Framework documentation
    └── ...
```

**Key Improvements:**

1. **Discovery Commands**: `/documentation` and `/commands` for better navigation
2. **Clear Separation**: Docs contain guidelines, commands contain execution details
3. **Smart References**: Commands use @-references to pull in relevant docs
4. **No Breaking Changes**: Existing structure preserved

**Command Format Guidelines:**

Commands should be clear and focused:

1. **Brief description** at the top explaining what the command does
2. **Separator line** (---)
3. **Detailed description** providing context and usage examples
4. **Flexible structure** - use sections that make sense for the command

**Documentation vs Commands Separation:**

- **Docs**: General guidelines, philosophies, best practices

  - `/docs/git/commit-guidelines.md` - How to write good commits
  - `/docs/testing/tdd.md` - TDD philosophy and principles
  - `/docs/architecture.md` - System design

- **Commands**: Specific workflows and execution instructions
  - `/commands/git-commit.md` - Interactive commit workflow
  - `/commands/test.md` - Testing execution strategies
  - `/commands/improve.md` - Code improvement process

**Implementation Plan:**

1. **Phase 1 (Completed)**: Add `/documentation` and `/commands` discovery commands
2. **Phase 2**: Review existing commands for optimal @-reference usage
3. **Phase 3**: Optimize base CLAUDE.md context loading
4. **Phase 4**: Document best practices for docs vs commands organization

**Future Considerations:**

- Monitor which @-references are actually used in practice
- Track command usage patterns for further optimization
- Consider sub-agent patterns for complex task delegation if needed
