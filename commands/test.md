Complete testing workflow with TDD practices and comprehensive strategies.

---

Comprehensive testing strategies including unit, integration, and TDD workflows. Specify focus areas like `/test tdd` for TDD cycle or `/test integration` for integration testing. Provides systematic approach to testing with framework-specific guidance and best practices.

## Command Type

workflow - [Complexity: medium]

## Tool Usage

- **Primary**: Bash (run tests), TodoRead (check existing tasks), TodoWrite (track testing progress), Read (test files)
- **Secondary**: Edit (create/modify tests), Grep (search test patterns), Glob (find test files)
- **Avoid**: Write (unless creating new test files), MultiEdit (prefer targeted test changes)

## Context

- **Files**: @docs/testing.md, auto-detected project test standards
- **Patterns**: TDD cycle, testing strategies, framework-specific practices, coverage requirements
- **Dependencies**: Project test framework, existing test structure, CI/CD integration

**Note**: This command benefits from focused execution. Consider using with Task tool for sub-agent delegation when creating new tests.

## Testing Workflow

### 1. Test Strategy Planning

- **Understand Requirements**

  - What behavior needs to be tested?
  - What are the acceptance criteria?
  - What are the edge cases?

- **Choose Test Types**
  - Unit tests for individual components
  - Integration tests for component interaction
  - End-to-end tests for complete workflows
  - Performance tests for critical paths

### 2. Test Implementation

- **Write Test Cases**

  - Happy path scenarios
  - Error conditions
  - Edge cases and boundaries
  - Performance requirements

- **Implement Tests**
  - Use appropriate testing frameworks
  - Follow project testing conventions
  - Ensure test isolation and independence
  - Mock external dependencies

### 3. Test Execution and Analysis

- **Run Tests**

  - Execute individual tests
  - Run test suites
  - Check coverage metrics
  - Analyze failure patterns

- **Interpret Results**
  - Understand test failures
  - Identify gaps in coverage
  - Validate test quality
  - Plan improvements

## Test-Driven Development (TDD)

### Red-Green-Refactor Cycle

#### 🔴 Red Phase - Write Failing Test

1. **Write a small test** that defines desired behavior
2. **Run the test** - it should fail (no implementation yet)
3. **Verify failure reason** - ensure it fails for the right reason

#### 🟢 Green Phase - Make Test Pass

1. **Write minimal code** to make the test pass
2. **Run the test** - it should now pass
3. **Don't worry about code quality** - just make it work

#### 🔵 Refactor Phase - Improve Code

1. **Clean up the code** while keeping tests green
2. **Improve design** without changing behavior
3. **Run tests** after each refactoring step

### TDD Best Practices

#### Test First

- Write tests before implementation
- Tests drive the design
- Only write enough code to pass tests

#### Small Steps

- Write the smallest possible test
- Make the smallest change to pass
- Refactor in small increments

#### Fast Feedback

- Tests should run quickly
- Immediate feedback on changes
- Catch regressions early

## Testing Types and Strategies

### Unit Testing

- **Scope**: Individual functions, methods, classes
- **Focus**: Logic, calculations, state changes
- **Isolation**: Mock dependencies
- **Speed**: Fast execution

### Integration Testing

- **Scope**: Component interactions
- **Focus**: Interfaces, data flow, protocols
- **Dependencies**: Real or realistic mocks
- **Coverage**: Critical integration points

### End-to-End Testing

- **Scope**: Complete user workflows
- **Focus**: User experience, business logic
- **Environment**: Production-like setup
- **Validation**: Acceptance criteria

### Performance Testing

- **Scope**: System under load
- **Focus**: Response times, throughput
- **Metrics**: Latency, resource usage
- **Thresholds**: Performance requirements

## Test Quality Guidelines

### Test Design

- **Single Responsibility**: One concept per test
- **Clear Naming**: Test names describe behavior
- **Independent**: Tests don't depend on each other
- **Repeatable**: Same results every time

### Test Data

- **Minimal**: Use smallest data set needed
- **Realistic**: Representative of real usage
- **Isolated**: Each test manages its own data
- **Clean**: Reset state between tests

### Assertions

- **Specific**: Test exact expected behavior
- **Complete**: Cover all important aspects
- **Clear**: Meaningful error messages
- **Focused**: Don't test implementation details

## Common Testing Patterns

### Arrange-Act-Assert (AAA)

```
// Arrange - Set up test data and conditions
// Act - Execute the behavior being tested
// Assert - Verify the expected outcome
```

### Given-When-Then (BDD)

```
// Given - Initial context and preconditions
// When - The action or event that triggers behavior
// Then - Expected outcome or result
```

### Test Doubles

- **Stubs**: Return predefined values
- **Mocks**: Verify method calls and interactions
- **Fakes**: Simplified working implementations
- **Spies**: Record information about usage

## Framework-Specific Guidance

### Python (pytest, unittest)

- Use fixtures for test setup
- Parametrize tests for multiple scenarios
- Use pytest markers for test organization
- Mock external dependencies with unittest.mock

### JavaScript (Jest, Mocha, Cypress)

- Use describe/it structure for organization
- Mock modules and API calls
- Test async code properly
- Use snapshot testing for UI components

### General Principles

- Keep tests simple and readable
- Test behavior, not implementation
- Maintain tests like production code
- Run tests in CI/CD pipeline

## Test Maintenance

### Regular Review

- Update tests with code changes
- Remove obsolete tests
- Improve test coverage
- Refactor test code

### Performance Monitoring

- Track test execution time
- Optimize slow tests
- Parallelize test execution
- Monitor test stability

### Documentation

- Document testing strategies
- Explain complex test scenarios
- Share testing best practices
- Maintain test data documentation

## Output

Provides comprehensive testing strategy with implementation guidance, framework-specific approaches, and verification results.

<output-template>
## Testing Strategy

### Test Plan

- **Scope**: [What will be tested]
- **Approach**: [Unit/Integration/E2E strategy]
- **Framework**: [Testing tools and libraries]

### Implementation

- **Tests created**: [List of test files and scenarios]
- **Coverage**: [Areas covered and gaps]
- **TDD cycle**: [Red-Green-Refactor progress]

### Execution Results

- **Tests run**: [Number of tests executed]
- **Results**: [Pass/fail status and details]
- **Performance**: [Execution time and optimization]

### Quality Assessment

- **Coverage metrics**: [Percentage and critical paths]
- **Test quality**: [Maintainability and effectiveness]
- **Recommendations**: [Improvements and next steps]

### Next Steps

- **Additional tests**: [Missing test scenarios]
- **Refactoring**: [Code improvements needed]
- **Automation**: [CI/CD integration tasks]
  </output-template>

## Validation

- Test strategy aligns with project requirements
- Framework-specific best practices are followed
- Coverage is comprehensive and meaningful
- Tests are maintainable and well-structured
- Results provide actionable insights

## Examples

<example-1>
**Input**: `/test tdd` for new feature
**Output**: Guides through TDD cycle with red-green-refactor approach and framework-specific implementation
</example-1>

<example-2>
**Input**: `/test integration` for API testing
**Output**: Creates integration testing strategy with API testing patterns and verification approach
</example-2>
