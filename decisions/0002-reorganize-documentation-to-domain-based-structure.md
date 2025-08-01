# Reorganize Documentation to Domain-Based Structure

- status: accepted
- date: 2025-07-08
- implemented: 2025-07-08
- decision-makers: [Krishna]
- consulted: [Claude Code Memory Framework Analysis]
- informed: [All future Claude Code sessions]

Technical Story: Reorganize the `~/.claude/` memory framework from type-based (context/, guides/, templates/) to domain-based organization under `docs/` directory.

## Context and Problem Statement

The current memory framework organizes documentation by document type (context/, guides/, templates/) rather than by domain or topic. This creates cognitive overhead when searching for information and forces users to think about "what type of document is this?" rather than "what domain am I working in?"

The existing structure:

- `context/` - Development guidelines and standards
- `guides/` - Step-by-step workflows and processes
- `templates/` - Reusable starting points
- `decisions/` - M-ADR decision records

This organization leads to:

- Scattered related information across directories
- Unclear boundaries between context/guides categories
- Difficulty discovering domain-specific information
- Inconsistent with existing `decisions/` pattern

## Decision Drivers

- **Cognitive Load**: Reduce mental overhead when finding information
- **Discoverability**: Group related concepts together by domain
- **Maintainability**: Easier to maintain domain-specific documentation
- **Consistency**: Align with existing `decisions/` pattern
- **Scalability**: Structure that grows naturally with new domains

## Considered Options

- Domain-based organization under `docs/`
- Usage pattern-based organization (reference/, workflows/, templates/)
- Flat structure under `docs/`
- Keep current type-based structure

## Decision Outcome

Chosen option: "Domain-based organization under `docs/`", because it provides the most natural mental model for finding information, scales well with new domains, and aligns with the existing `decisions/` pattern.

### Consequences

- Good, because users can think "I need git help" → look in `docs/git/`
- Good, because related concepts are grouped together
- Good, because it's easier to maintain domain-specific knowledge
- Good, because it aligns with existing `decisions/` pattern
- Good, because sessions are now clearly separated from persistent docs
- Bad, because requires updating all existing @-references
- Bad, because some cross-domain content may be harder to categorize

### Confirmation

Implementation confirmed by:

1. ✅ All files successfully migrated to new structure
2. ✅ All @-references updated in CLAUDE.md files
3. ✅ New README.md files created for each domain
4. ✅ All command references updated to new paths
5. ✅ Verification that all references resolve correctly
6. ✅ Old directories removed after successful migration

## Pros and Cons of the Options

### Domain-based organization under `docs/`

- Good, because natural mental model matches how developers think
- Good, because easy to discover related information
- Good, because scales well with new domains
- Good, because consistent with existing `decisions/` pattern
- Good, because clear separation of persistent docs from transient sessions
- Bad, because some content spans multiple domains
- Bad, because requires significant migration effort

### Usage pattern-based organization

- Good, because matches how documents are used
- Good, because clearer functional boundaries
- Bad, because subjective classification of documents
- Bad, because less intuitive than domain-based thinking
- Bad, because potential for content duplication

### Flat structure under `docs/`

- Good, because simplest possible organization
- Good, because no categorization decisions needed
- Bad, because doesn't scale with growing number of documents
- Bad, because harder to discover related information
- Bad, because loses organizational benefits

### Keep current type-based structure

- Good, because no migration required
- Good, because maintains existing mental model
- Bad, because cognitive overhead of type-based thinking
- Bad, because scattered related information
- Bad, because unclear boundaries between categories

## More Information

- Memory Framework Analysis: Identified organizational issues in current structure
- Implementation: Files migrated to new domain structure with updated references
- Future: Plan to create README.md indexes for each domain directory
