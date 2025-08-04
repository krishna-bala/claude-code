# Documentation as Leaf Nodes Architecture

- status: draft
- date: 2025-01-08
- decision-makers: krishna
- consulted: Claude Code architecture team
- informed: All Claude Code users

Technical Story: Simplify the Claude Code documentation system to eliminate cross-references between documents, treating them as leaf nodes that can only be referenced by commands, agents, and CLAUDE.md files.

## Context and Problem Statement

The current Claude Code documentation system has evolved to include complex cross-referencing between documents, creating a "memory framework" concept with multiple layers of indirection. This complexity makes it difficult to understand what documentation exists, maintain consistency, and avoid circular dependencies.

Should we restructure the documentation system to treat all documents as leaf nodes (no cross-references) that can only be referenced by the active components (commands, agents, CLAUDE.md)?

## Decision Drivers

- Simplicity and clarity of the documentation architecture
- Ease of maintenance and avoiding broken references
- Token efficiency when loading documentation
- Clear separation between persistent knowledge and active workflows
- Avoiding circular dependencies and complex loading chains

## Considered Options

1. **Leaf Node Documentation** - Documents cannot reference other documents
2. **Hierarchical References** - Allow parent-child relationships only
3. **Full Cross-References** - Keep current system with documents referencing each other
4. **Tagged Dependencies** - Allow references but with explicit dependency tracking

## Decision Outcome

Chosen option: "Leaf Node Documentation", because it provides the clearest mental model, eliminates circular dependencies, and makes the system easier to understand and maintain.

### Consequences

- Good, because documents become self-contained units of knowledge
- Good, because no risk of circular dependencies or broken reference chains
- Good, because clear separation between knowledge (docs) and orchestration (commands/agents)
- Good, because easier to understand what will be loaded
- Bad, because some natural relationships between documents cannot be expressed
- Bad, because may lead to some duplication of context

### Confirmation

Implementation will be confirmed by:

- Removing all @-references from documents in docs/, templates/, and decisions/
- Updating architecture.md to reflect the new approach
- Ensuring all cross-references exist only in commands/, agents/, and CLAUDE.md files

## Pros and Cons of the Options

### Leaf Node Documentation

Documents are pure knowledge containers with no references to other documents. Only commands, agents, and CLAUDE.md can reference documents.

- Good, because simplest possible mental model
- Good, because no possibility of circular dependencies
- Good, because clear separation of concerns
- Good, because predictable loading behavior
- Bad, because cannot express natural relationships between related topics
- Bad, because may require duplication of some context

### Hierarchical References

Allow documents to reference child documents but not siblings or parents.

- Good, because can express some natural relationships
- Good, because still prevents circular dependencies
- Bad, because more complex than leaf nodes
- Bad, because requires tracking parent-child relationships
- Bad, because can still create deep loading chains

### Full Cross-References

Keep the current system where any document can reference any other document.

- Good, because maximum flexibility
- Good, because can express all relationships
- Bad, because complexity grows exponentially
- Bad, because circular dependencies are possible
- Bad, because difficult to understand what will be loaded
- Bad, because harder to maintain

### Tagged Dependencies

Allow references but require explicit dependency declarations and validation.

- Good, because can express relationships with safety checks
- Good, because could detect circular dependencies
- Bad, because adds significant complexity
- Bad, because requires tooling to validate
- Bad, because still allows complex loading chains

## More Information

This decision emerged from the observation that the "memory framework" concept had become overly complex, with documents like memory-framework.md, documentation-guidelines.md, and documentation-maintenance.md creating multiple layers of cross-references that were difficult to follow and maintain.
