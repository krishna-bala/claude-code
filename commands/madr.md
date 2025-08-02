Intelligently manages Markdown Architectural Decision Records (M-ADR) through their complete lifecycle from draft to superseded.

---

This command automatically determines the appropriate action (create, update, accept, reject, supersede) based on context and manages M-ADR files following official MADR conventions. It handles proper directory structure (`decisions/`), sequential numbering (`NNNN-title-with-dashes.md`), status tracking (draft → accepted/rejected → superseded), and automatic cross-referencing. All new ADRs start as drafts, allowing iteration before committing to decisions.

## Context

- **Files**: @../templates/madr-template.md, @../templates/madr-template-minimal.md, and existing ADRs in @../decisions/
- **Patterns**: Sequential numbering (0001, 0002, etc.), kebab-case titles, status progression (draft → accepted/rejected → superseded)
- **Dependencies**: Project decision-making processes, stakeholder identification, decision evolution tracking

## Process

1. **Analyze Context** - Determine action from user input:
   - Keywords like "accept", "reject", "supersede" + ADR number → Status change
   - ADR number + new content → Update existing draft
   - New decision topic → Create new draft
   - "Supersede" + number + new topic → Create superseding ADR

2. **Initialize Structure** - Create `decisions/` directory if needed

3. **Execute Action**:
   - **Create**: New ADR with next number, status "draft"
   - **Update**: Modify existing draft with new information
   - **Accept/Reject**: Change draft status with timestamp
   - **Supersede**: Create new draft, cross-reference both ADRs

4. **Handle Cross-References** - For superseding, update old ADR with "Superseded by" note

5. **Save with Git-Friendly Names** - No renaming on status changes, rely on git history

## Output

Creates or updates a properly numbered M-ADR file with complete metadata, following official MADR conventions for organization and lifecycle management.

<output-template>

## MADR Created: [decision-title]

**File**: `decisions/NNNN-title-with-dashes.md`
**Number**: [NNNN]
**Template**: [full|minimal]
**Status**: [draft|accepted|rejected|superseded]
**Date**: [YYYY-MM-DD]
**Action Taken**: [created|updated|accepted|rejected|superseded]

### Decision Summary

- **Problem**: [brief problem statement]
- **Chosen Option**: [selected solution]
- **Key Consequences**: [major impacts]
- **Decision Makers**: [participants]

</output-template>

## Validation

- MADR file exists in `decisions/` directory
- Sequential numbering is maintained
- All required metadata fields are populated
- Decision rationale includes context, options, and consequences
- Status and date are properly set

## Examples

<example-1>
**Input**: /madr We need to choose between REST and GraphQL for our API architecture
**Action Detected**: Create (new decision topic)
**Output**: Creates `decisions/0001-choose-between-rest-and-graphql.md` with status "draft", full template for complex architectural decision
</example-1>

<example-2>
**Input**: /madr Accept ADR 0001
**Action Detected**: Accept (explicit action + ADR number)
**Output**: Updates `decisions/0001-choose-between-rest-and-graphql.md` status from "draft" to "accepted" with current date
</example-2>

<example-3>
**Input**: /madr Supersede 0001 with tRPC instead of GraphQL
**Action Detected**: Supersede (keyword + ADR number + new decision)
**Output**: 
- Creates `decisions/0002-use-trpc-instead-of-graphql.md` as draft with "Supersedes: 0001"
- Updates 0001 with "Superseded by [ADR-0002](0002-use-trpc-instead-of-graphql.md)"
</example-3>

<example-4>
**Input**: /madr 0002 After team discussion, we should also consider gRPC as an option
**Action Detected**: Update (ADR number + additional content)
**Output**: Updates draft `decisions/0002-use-trpc-instead-of-graphql.md` adding gRPC to considered options
</example-4>
