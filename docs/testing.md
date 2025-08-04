# Testing Guide

A comprehensive guide for testing strategies, TDD practices, and quality assurance.

## Overview

Testing ensures code quality through systematic verification of behavior. This guide covers unit testing, integration testing, end-to-end testing, and test-driven development practices.

## Core Principles

### Test Philosophy

- **Write Unchanging Tests**: Tests change only when requirements change, not for refactoring
- **Test Public APIs**: Use same interfaces as real users, treat system as black box
- **Test State, Not Interactions**: Verify outcomes, not implementation details
- **Test Behaviors, Not Implementation**: Focus on what the function should do, not how

### Test Quality

- **Deterministic**: Same input always produces same output
- **Independent**: Each test runs in isolation without depending on others
- **Fast**: Milliseconds per test, run frequently
- **Clear**: Descriptive names and failure messages aid debugging

## TDD Workflow

### Red-Green-Refactor Cycle

1. **🔴 Red Phase - Write Failing Test**

   - Write a small test defining desired behavior
   - Run the test - it should fail (no implementation yet)
   - Verify failure reason - ensure it fails correctly

2. **🟢 Green Phase - Make Test Pass**

   - Write minimal code to make the test pass
   - Run the test - it should now pass
   - Don't worry about code quality - just make it work

3. **🔵 Refactor Phase - Improve Code**
   - Clean up code while keeping tests green
   - Improve design without changing behavior
   - Run tests after each refactoring step

## Test Structure

### Patterns

- **Arrange-Act-Assert (AAA)**: Setup → Execute → Verify
- **Given-When-Then (BDD)**: Context → Action → Outcome
- **Setup-Execute-Verify-Teardown**: Full lifecycle management

### Writing Clear Tests

```python
def test_should_transfer_funds():
    # Given - Setup test context
    account1 = create_account_with_balance(150)
    account2 = create_account_with_balance(20)

    # When - Execute behavior
    bank.transfer_funds(account1, account2, 100)

    # Then - Verify outcomes
    assert account1.get_balance() == 50
    assert account2.get_balance() == 120
```

### Naming Conventions

- Use `shouldDoSomethingWhenCondition` format
- Describe behavior and expected outcome
- Examples:
  - `shouldRejectWithdrawalWhenBalanceInsufficient`
  - `shouldReturnEmptyListWhenNoItemsMatch`

## Test Types

### Unit Testing

- **Scope**: Individual functions, methods, classes
- **Focus**: Logic, calculations, state changes
- **Isolation**: Mock all dependencies
- **Speed**: Fast execution (milliseconds)
- **Coverage**: ~80% of test suite

### Integration Testing

- **Scope**: Component interactions
- **Focus**: Interfaces, data flow, protocols
- **Dependencies**: Real or realistic mocks
- **Coverage**: ~20% of test suite, critical paths

### End-to-End Testing

- **Scope**: Complete user workflows
- **Focus**: User experience, business logic
- **Environment**: Production-like setup
- **Validation**: Acceptance criteria

## Best Practices

### Test Content

- **One assertion per concept**: Focus each test on single behavior
- **Precise assertions**: Use exact comparisons when deterministic
- **Calculate expected values**: Show math in comments, avoid magic numbers
- **Complete and concise**: All context in test body, no irrelevant details
- **No test logic**: Avoid conditionals, loops, or calculations in tests

### Test Data

- **Minimal**: Use smallest data set needed
- **Realistic**: Representative of real usage
- **Isolated**: Each test manages its own data
- **Meaningful**: Choose inputs that clearly demonstrate the test case

### Coverage Strategy

- **Edge cases**: Empty inputs, boundary conditions, invalid parameters
- **Error conditions**: How function handles bad input or failure states
- **Contract verification**: All documented behavior and return values
- **Happy path**: Normal, expected usage scenarios

### Helper Methods

- **DAMP over DRY**: Descriptive tests over dry abstraction
- **Hide construction details**: Show only important inputs
- **Reusable fixtures**: Share common setup between related tests

## Framework Guidelines

### Python (pytest, unittest)

- Use fixtures for test setup
- Parametrize tests for multiple scenarios
- Use pytest markers for test organization
- Mock external dependencies with unittest.mock

## Anti-Patterns to Avoid

### Test Design

- Testing private methods or implementation details
- Test interdependence or execution order coupling
- Multiple unrelated behaviors in one test
- Relying on specific implementation details

### Assertions

- Vague assertions like `EXPECT_TRUE(result.size() > 0)`
- Testing intermediate states instead of final outcomes
- Assertions without descriptive failure messages

### Test Data

- Using random or non-deterministic test data
- Brittle coupling to data formats or UI details
- Hardcoding values that should be calculated

## Quick Reference

### TDD Checklist

- [ ] Write test first (Red)
- [ ] Make it pass simply (Green)
- [ ] Refactor with confidence (Refactor)
- [ ] One behavior per test
- [ ] Clear test names
- [ ] No test logic

### Test Structure Template

```
def test_<behavior>_when_<condition>():
    # Given: Setup
    <arrange test data>

    # When: Execute
    <perform action>

    # Then: Verify
    <assert outcomes>
```

### Coverage Goals

- Unit tests: ~80% coverage, all critical paths
- Integration tests: ~20% coverage, key interactions
- E2E tests: Critical user journeys only

**Goal**: Sustainable test suite providing confidence without maintenance burden.

