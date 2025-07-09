# M-ADR Template (Full)

Template for comprehensive Any Decision Records using M-ADR format.

## Usage

Use this template for complex decisions that require detailed analysis of multiple options and their trade-offs.

<madr-template>

# [short title of solved problem and solution]

- status: [proposed | rejected | accepted | deprecated | superseded by [ADR-0005](0005-example.md)]
- date: [YYYY-MM-DD when the decision was last updated]
- decision-makers: [list everyone involved in the decision]
- consulted: [list everyone whose opinions are sought (stakeholders, subject matter experts)]
- informed: [list everyone who is kept up-to-date on progress (wider team)]

Technical Story: [description | ticket/issue URL]

## Context and Problem Statement

[Describe the context and problem statement]

[Optionally, articulate the problem in form of a question.]

## Decision Drivers

- [decision driver 1, e.g., a force, facing concern, …]
- [decision driver 2, e.g., a force, facing concern, …]
- [etc.]

## Considered Options

- [option 1]
- [option 2]
- [option 3]
- [etc.]

## Decision Outcome

Chosen option: "[option 1]", because [justification. e.g., only option, which meets k.o. criterion decision driver | which resolves force force | … | comes out best (see below)].

### Consequences

- Good, because [positive consequence, e.g., improvement of one or more desired qualities, …]
- Bad, because [negative consequence, e.g., compromising one or more desired qualities, …]
- [etc.]

### Confirmation

[Describe how the implementation of/compliance with the ADR is confirmed. E.g., by a review or an ArchUnit test. Although we classify this element as optional, it is included in most ADRs.]

## Pros and Cons of the Options

### [option 1]

[example | description | pointer to more information | …]

- Good, because [argument a]
- Good, because [argument b]
- Bad, because [argument c]
- [etc.]

### [option 2]

[example | description | pointer to more information | …]

- Good, because [argument a]
- Good, because [argument b]
- Bad, because [argument c]
- [etc.]

### [option 3]

[example | description | pointer to more information | …]

- Good, because [argument a]
- Good, because [argument b]
- Bad, because [argument c]
- [etc.]

## More Information

[e.g., link to the original issue, team meetings, stakeholder input]

</madr-template>

## Guidelines

- Replace all placeholder text in [brackets]
- Remove optional sections if not needed
- Focus on capturing the reasoning behind the decision
- Include sufficient context for future understanding
- Document all seriously considered alternatives
