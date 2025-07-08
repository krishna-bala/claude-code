# Test-Driven Development

## Core Principles

**Write Unchanging Tests**: Tests change only when requirements change, not for refactoring
**Test Public APIs**: Use same interfaces as real users, treat system as black box  
**Test State, Not Interactions**: Verify outcomes, not implementation details

## Writing Clear Tests

**Structure**: Given-When-Then format for all tests
**Names**: Describe behavior and expected outcome (e.g., `shouldRejectWithdrawalWhenBalanceInsufficient`)
**Content**: Complete and concise - all context in test body, no irrelevant details
**Logic**: No conditionals, loops, or calculations - straight-line code only

```python
def test_should_transfer_funds():
    # Given
    account1 = create_account_with_balance(150)
    account2 = create_account_with_balance(20)

    # When
    bank.transfer_funds(account1, account2, 100)

    # Then
    assert account1.get_balance() == 50
    assert account2.get_balance() == 120
```

## TDD Workflow

1. **Red**: Write failing test for next behavior
2. **Green**: Write minimal code to pass
3. **Refactor**: Clean up while keeping tests green

## Key Guidelines

**DAMP over DRY**: Descriptive tests over dry abstraction
**Helper Methods**: Hide construction details, show important inputs
**Coverage**: ~80% unit tests, ~20% integration tests
**Speed**: Milliseconds per test, run frequently

## Anti-patterns

- Testing private methods or implementation details
- Test interdependence or execution order coupling
- Logic in tests (conditionals, loops, calculations)
- Brittle coupling to data formats or UI details

**Goal**: Sustainable test suite providing confidence without maintenance burden.

