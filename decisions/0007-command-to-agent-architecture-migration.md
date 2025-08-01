# 0007 - Command to Agent Architecture Migration

**Status:** Proposed  
**Date:** 2025-07-31  
**Deciders:** Krishna, Architecture Team

## Context and Problem Statement

The Claude memory framework currently uses 12 commands for various development tasks. This creates cognitive overload for users, unclear boundaries between commands, and redundant functionality. Many commands essentially load specialized context that would be better served by dedicated agents. We need to evolve the architecture to provide clearer separation of concerns and improved user experience.

## Decision Drivers

- **Cognitive Load**: 12 commands are too many for users to remember effectively
- **Functional Overlap**: Multiple commands serve similar purposes (e.g., /debug vs /analyze)
- **Context Efficiency**: Commands load unnecessary context for specific tasks
- **Discovery Friction**: Users struggle to find the right command for their needs
- **Maintenance Burden**: Duplicate functionality across commands and agents

## Considered Options

### Option 1: Keep Current 12-Command System
- **Pros**: No migration needed, users familiar with current system
- **Cons**: Continued cognitive overload, maintenance complexity, poor discoverability

### Option 2: Reduce to 2-3 Core Commands + Enhanced Agents
- **Pros**: Simplified mental model, clear separation of concerns, specialized assistance
- **Cons**: Migration effort required, potential user confusion during transition

### Option 3: Move Everything to Agents
- **Pros**: Maximum specialization, consistent interaction model
- **Cons**: Loses unique command functionality, harder discovery without entry points

### Option 4: Create Command Categories
- **Pros**: Organized structure, maintains all functionality
- **Cons**: Still complex, doesn't address core cognitive load issue

## Decision Outcome

Chosen option: **"Option 2: Reduce to 2-3 Core Commands + Enhanced Agents"**

This approach provides the optimal balance between simplicity and functionality. By maintaining essential commands for unique workflows while delegating specialized tasks to agents, we create a clearer mental model for users.

### Positive Consequences

- **Reduced Cognitive Load**: From 12 commands to 2-3
- **Clear Boundaries**: Commands for unique tasks, agents for specialization
- **Better Discovery**: /analyze acts as intelligent router to agents
- **Context Efficiency**: Load only what's needed for each task
- **Scalability**: Easy to add new specialized agents without command proliferation

### Negative Consequences

- **Migration Effort**: Requires updating documentation and user workflows
- **Transition Period**: Temporary confusion during migration
- **Learning Curve**: Users need to understand new command/agent split

## Implementation Details

### Commands to Keep

1. **`/madr`**: Unique ADR creation functionality
2. **`/analyze`**: General analysis and agent routing
3. **`/discover`** (optional): Explicit discovery helper

### Command to Agent Migration

| Current Command | Target Agent | Enhancement Needed |
|----------------|--------------|-------------------|
| /commands, /documentation, /memory-framework | memory-framework | Add listing and browsing |
| /review | code-reviewer | Already exists |
| /test | test-automator | Already exists |
| /generate-pr | pr-generator | Create or enhance |
| /debug | debugger | Already exists |
| /improve | Multiple agents | Context-dependent routing |

### Migration Strategy

1. **Phase 1**: Update base documentation and enhance /analyze
2. **Phase 2**: Enhance agents with migrated functionality
3. **Phase 3**: Add deprecation warnings to old commands
4. **Phase 4**: Remove deprecated commands after transition

### Success Criteria

- Command usage reduced from 12 to 2-3
- User satisfaction scores improve
- Discovery time < 30 seconds
- No loss of functionality
- Successful migration of 100% users within 3 months

## Risks and Mitigation

### Risk: User Confusion During Migration
**Mitigation**: Clear migration guides, extended transition period, helpful deprecation messages

### Risk: Lost Functionality
**Mitigation**: Comprehensive testing, feature parity validation, user feedback loops

### Risk: Poor Agent Discovery
**Mitigation**: Enhanced /analyze routing, improved agent documentation, discovery helpers

## More Information

- Architecture document: @docs/architecture/command-agent-framework.md
- Workflow diagrams: @docs/architecture/command-agent-workflow.md
- Original command design: @docs/decisions/0005-command-system-design.md

## Decision Review

This decision should be reviewed after:
- Initial implementation (2 months)
- Full migration completion (3 months)
- 6 months of production use

Key metrics to track:
- Command usage patterns
- Agent discovery success rate
- User satisfaction scores
- Support request frequency
- Time to task completion