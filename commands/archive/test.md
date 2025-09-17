Comprehensive testing workflow with TDD/BDD practices for unit, integration, and end-to-end testing.

---

- **Standards**: @docs/testing.md (testing principles, TDD workflow, best practices)
- **Focus**: `/test unit`, `/test integration`, `/test` for general approach, etc.

## Process

### Test Strategy

1. **Analyze requirements** - Understand what needs testing
2. **Choose approach** - Unit, integration, simulation, or E2E based on needs
3. **Apply TDD cycle** - Red-green-refactor when building new features
4. **Ensure quality** - Follow testing principles from standards

### Implementation Flow

1. Write failing tests first (when doing TDD)
2. Implement minimal code to pass
3. Refactor while keeping tests green
4. Add edge cases and error scenarios
5. Verify coverage and test quality

## Output

Provides testing strategy, implementation guidance, and execution results based on project needs and chosen testing approach.

## Examples

<example-1>
**Input**: `/test unit` for authentication module
**Output**: Unit testing strategy with mocked dependencies and comprehensive edge case coverage
</example-1>

<example-2>
**Input**: `/test tdd` for new feature
**Output**: Guides through complete TDD cycle with failing tests first, then implementation
</example-2>

<example-3>
**Input**: `/test integration` for API endpoints
**Output**: Integration testing approach with realistic data and endpoint interaction tests
</example-3>
