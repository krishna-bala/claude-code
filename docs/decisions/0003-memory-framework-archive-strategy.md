# Use domain-specific archive directories for memory framework organization

## Context and Problem Statement

The Claude memory framework needed a strategy for organizing archived content (obsolete commands, deprecated documentation, etc.). The question was whether to maintain a single root-level `archive/` directory or distribute archive directories within each domain (commands, docs, etc.).

## Considered Options

- Single root-level `archive/` directory with subdirectories for each domain
- Domain-specific `archive/` directories within each section (commands/archive/, docs/archive/, etc.)
- No archiving strategy - just delete obsolete content

## Decision Outcome

Chosen option: "Domain-specific archive directories within each section", because it maintains organizational consistency with the domain-based structure and keeps archived content within its original context.

### Consequences

- Good, because archived content remains within its domain context making it easier to find and understand
- Good, because it follows the established domain-based organizational principle consistently
- Good, because it prevents a single archive directory from becoming a dumping ground for mixed content types
- Bad, because it requires creating multiple archive directories instead of a single one
- Bad, because it's slightly more complex to implement initially

<!--
Status: accepted
Date: 2025-07-08
Decision makers: krishna, claude
-->
