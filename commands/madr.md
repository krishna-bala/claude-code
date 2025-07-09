Creates or updates Markdown Architectural Decision Records (M-ADR) with proper organization, numbering, and lifecycle management.

---

This command manages M-ADR files following official MADR conventions. It handles the complete lifecycle including proper directory structure (`docs/decisions/`), sequential numbering (`NNNN-title-with-dashes.md`), status tracking, and cross-referencing between decisions. The command automatically determines template complexity, creates new records, and updates existing ones with status changes or content modifications.

## Command Type

generation - [Complexity: medium]

## Tool Usage

- **Primary**: Read (templates, existing ADRs), Write (new/updated MADR files), Glob (find existing ADRs), mcp**time**get_current_time (timestamps)
- **Secondary**: LS (verify directory structure), Bash (create directories if needed)
- **Avoid**: Manual file management without proper numbering

## Context

- **Files**: `~/.claude/docs/templates/madr-template.md`, `~/.claude/docs/templates/madr-template-minimal.md`, `docs/decisions/` directory, existing ADRs
- **Patterns**: Sequential numbering (0001, 0002, etc.), kebab-case titles, status progression (proposed → accepted → deprecated)
- **Dependencies**: Project decision-making processes, architectural categorization, stakeholder identification

## Process

1. **Initialize Structure** - Create `docs/decisions/` directory if it doesn't exist
2. **Determine Action** - Create new MADR or update existing one based on arguments
3. **Handle Numbering** - Find highest existing MADR number and increment for new records
4. **Analyze Decision Complexity** - Choose full or minimal template based on scope and stakeholders
5. **Generate/Update MADR** - Create new or modify existing decision record with proper metadata
6. **Save and Index** - Write to `docs/decisions/NNNN-title-with-dashes.md` with proper linking

## Output

Creates or updates a properly numbered M-ADR file with complete metadata, following official MADR conventions for organization and lifecycle management.

<output-template>

## MADR Created: [decision-title]

**File**: `docs/decisions/NNNN-title-with-dashes.md`
**Number**: [NNNN]
**Template**: [full|minimal]
**Status**: [proposed|accepted]
**Date**: [YYYY-MM-DD]

### Decision Summary

- **Problem**: [brief problem statement]
- **Chosen Option**: [selected solution]
- **Key Consequences**: [major impacts]
- **Decision Makers**: [participants]

</output-template>

## Validation

- MADR file exists in `docs/decisions/` directory
- Sequential numbering is maintained
- All required metadata fields are populated
- Decision rationale includes context, options, and consequences
- Status and date are properly set

## Examples

<example-1>

**Input**: /madr We need to choose between REST and GraphQL for our API architecture
**Output**: Creates `docs/decisions/0001-use-graphql-for-api.md` with full template, analyzing performance, complexity, team expertise, and tooling considerations

</example-1>

<example-2>

**Input**: /madr We decided to use Prettier for code formatting
**Output**: Creates `docs/decisions/0002-use-prettier-for-formatting.md` with minimal template documenting tool selection and setup consequences

</example-2>

<example-3>

**Input**: /madr Update 0001 status to accepted
**Output**: Updates `docs/decisions/0001-use-graphql-for-api.md` status from "proposed" to "accepted" with timestamp

</example-3>
