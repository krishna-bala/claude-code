Unpack complexity, clarify requirements, and establish fundamentals before implementation.

---

This command performs deep analysis of requirements and context to ensure clear understanding before proceeding with implementation. It structures thinking around explicit and implicit needs, identifies stakeholders, defines success criteria, and clarifies constraints to prevent misunderstandings and scope creep.

## Command Type

analysis - [Complexity: deep]

## Tool Usage

- **Primary**: Read (context files), TodoRead (check existing tasks), TodoWrite (track analysis steps), Bash (git operations for context)
- **Secondary**: Glob (discover related files), Grep (find patterns), WebFetch (external research)
- **Avoid**: Edit, Write, MultiEdit (analysis only, no implementation)

## Context

- **Files**: Project requirements, existing documentation, stakeholder communications
- **Patterns**: Explicit vs implicit requirements, success criteria, constraint indicators
- **Dependencies**: Project context, user needs, technical limitations

## Process

1. **Analysis Preparation** - Define key terms precisely, identify explicit and implicit needs
2. **Stakeholder Assessment** - Identify all affected parties and their requirements
3. **Success Criteria Definition** - Establish functional and non-functional requirements
4. **Constraint Analysis** - Clarify technical, resource, and cultural limitations
5. **Present Understanding** - Structure findings using analysis template format

## Output

Produces structured analysis of requirements, needs, stakeholders, success criteria, and constraints to establish clear foundation for implementation decisions.

<output-template>
# Deep Understanding Analysis

## Core Terminology

- **[Term]**: [Clear definition]

## Needs Assessment

- **Explicit**: [Stated requirements]
- **Implicit**: [Underlying needs]
- **Out-of-Scope**: [Excluded items]

## Stakeholders

- **Primary Users**: [Direct users]
- **Secondary**: [Indirectly affected]
- **Maintainers**: [Who maintains solution]

## Success Criteria

- **Functional**: [What it must do]
- **Non-functional**: [Performance requirements]
- **Boundaries**: [Solution scope limits]

## Constraints & Context

- **Technical**: [Technical limitations]
- **Resource**: [Time/budget/personnel limits]
- **Cultural**: [Environmental factors]

## Clarification Needs

- **Assumptions**: [Require validation]
- **Open Questions**: [Need answers]
- **Potential Issues**: [Confusion areas]
  </output-template>

## Validation

- All key terms are clearly defined
- Explicit and implicit needs are identified
- Success criteria are measurable
- Constraints are documented
- Outstanding questions are listed

## Examples

<example-1>
**Input**: "Add user authentication to the web app"
**Output**: Analysis defining authentication types, user roles, security requirements, integration points, and technical constraints
</example-1>

<example-2>
**Input**: "Improve application performance"
**Output**: Analysis clarifying performance metrics, user scenarios, technical bottlenecks, and measurement criteria
</example-2>
