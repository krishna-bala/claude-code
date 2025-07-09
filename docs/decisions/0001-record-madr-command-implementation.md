# Implementation of /madr Command

- status: accepted
- date: 2025-07-08
- decision-makers: krishna, Claude
- consulted: MADR documentation (adr.github.io)
- informed: claude framework users

Technical Story: Creation of standardized command for managing architectural decisions following M-ADR format with proper organization and lifecycle management.

## Context and Problem Statement

The claude framework lacked a standardized way to record architectural and technical decisions. While M-ADR templates existed, there was no automated workflow to:

- Create properly numbered decision records
- Follow M-ADR conventions for directory structure and naming
- Select appropriate template complexity based on decision scope
- Manage metadata and lifecycle tracking

This led to inconsistent decision documentation and missed opportunities to capture important architectural reasoning.

## Decision Drivers

- Need for consistent decision documentation across projects
- Requirement to follow official M-ADR conventions and best practices
- Desire to automate template selection and numbering
- Integration with existing claude framework patterns and workflows

## Considered Options

1. Manual M-ADR creation using existing templates
2. Simple command that copies template without automation
3. Full-featured /madr command with automation and lifecycle management

## Decision Outcome

Chosen option: "Full-featured /madr command with automation and lifecycle management", because it provides the most value through automation while maintaining M-ADR standards and integrating seamlessly with the claude framework.

### Consequences

- Good, because decisions will be consistently documented with proper numbering and metadata
- Good, because M-ADR conventions are automatically followed without manual setup
- Good, because template selection is automated based on decision complexity
- Good, because integrates with existing claude framework patterns and tools
- Bad, because adds complexity to the command structure
- Bad, because requires understanding of M-ADR format for effective use

### Confirmation

Implementation confirmed by:

- Command follows established claude framework patterns
- Proper M-ADR directory structure and naming conventions
- Template selection logic based on decision complexity
- Integration with time server for metadata timestamps

## Pros and Cons of the Options

### Manual M-ADR creation using existing templates

- Good, because simple and direct approach
- Good, because full control over content and structure
- Bad, because requires manual numbering and organization
- Bad, because inconsistent application of M-ADR conventions
- Bad, because no automation of metadata or lifecycle tracking

### Simple command that copies template without automation

- Good, because provides basic workflow automation
- Good, because maintains template consistency
- Bad, because still requires manual numbering
- Bad, because no intelligent template selection
- Bad, because limited metadata handling

### Full-featured /madr command with automation and lifecycle management

- Good, because fully automated M-ADR workflow
- Good, because proper sequential numbering and organization
- Good, because intelligent template selection based on complexity
- Good, because comprehensive metadata and lifecycle management
- Good, because follows official M-ADR conventions
- Bad, because increased implementation complexity
- Bad, because requires learning M-ADR format concepts

## More Information

- M-ADR documentation: https://adr.github.io/madr/
- Command implementation: commands/madr.md
- M-ADR templates: templates/madr-template.md, templates/madr-template-minimal.md
- Command standardization session: sessions/command-template-standardization-2025-07-08-1946.md
