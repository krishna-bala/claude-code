# M-ADR Template (Minimal)

Template for simple Any Decision Records using minimal M-ADR format.

## Usage

Use this template for straightforward decisions that don't require extensive analysis of multiple options.

<madr-template-minimal>

# [short title of solved problem and solution]

- status: [draft | rejected | accepted | superseded by [ADR-0005](0005-example.md)]
- supersedes: [ADR-0003](0003-example.md) # Only include if this supersedes another ADR
- date: [YYYY-MM-DD when the decision was last updated]
- decision-makers: [list everyone involved in the decision]
- consulted: [list everyone whose opinions are sought]
- informed: [list everyone who is kept up-to-date on progress]

## Context and Problem Statement

[Describe the context and problem statement, e.g., in free form using two to three sentences or in the form of an illustrative story.
You may want to articulate the problem in form of a question and add links to collaboration boards or issue management systems.]

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

</madr-template-minimal>

## Guidelines

- Replace all placeholder text in [brackets]
- Keep it concise - this template is for simpler decisions
- Focus on the core problem, options considered, and chosen solution
- Include key consequences but don't over-analyze
- Perfect for technical implementation choices, tool selections, or process decisions
