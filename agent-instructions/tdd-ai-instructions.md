# AI Instructions for Test-Driven Development

Based on Google's unit testing practices, follow these guidelines when writing tests:

## Core Principles

### 1. Write Unchanging Tests
- Tests should only need modification when system requirements change
- Avoid brittle tests that break with internal refactoring
- A test should survive:
  - Pure refactorings (internal changes without interface modifications)
  - New feature additions
  - Bug fixes
- Only behavior changes should require test updates

### 2. Test Through Public APIs
- Always test via the same interfaces that real users would use
- Never test private methods or internal implementation details
- Tests should treat the system as a black box
- This ensures tests break only when actual user-facing functionality breaks

### 3. Test State, Not Interactions
- Verify the final state of the system rather than how it got there
- Avoid over-reliance on mocking and interaction verification
- Prefer real objects over mocks when they're fast and deterministic
- Check what happened, not how it happened

## Writing Clear Tests

### 4. Make Tests Complete and Concise
- **Complete**: Test body should contain all information needed to understand it
- **Concise**: Remove irrelevant or distracting information
- Use helper methods to hide irrelevant construction details
- Each test should be self-contained and understandable in isolation

### 5. Test Behaviors, Not Methods
- Write one test per behavior, not per method
- Use Given-When-Then structure:
  - **Given**: Initial state/setup
  - **When**: Action taken
  - **Then**: Expected outcome
- Multiple tests may cover a single method if it has multiple behaviors
- Name tests after the behavior being tested, not the method name

### 6. Structure Tests for Clarity
```
@Test
public void shouldTransferFunds() {
    // Given - Set up initial state
    Account account1 = newAccountWithBalance(150);
    Account account2 = newAccountWithBalance(20);
    
    // When - Perform action
    bank.transferFunds(account1, account2, 100);
    
    // Then - Verify outcome
    assertThat(account1.getBalance()).isEqualTo(50);
    assertThat(account2.getBalance()).isEqualTo(120);
}
```

### 7. Use Descriptive Test Names
- Test names should describe the behavior and expected outcome
- Consider starting with "should" for readability
- Include relevant context (state, action, expectation)
- Examples:
  - `shouldRejectWithdrawalWhenBalanceInsufficient`
  - `shouldCalculateTaxForInternationalOrders`
  - `shouldTimeOutAfterThreeFailedLoginAttempts`

### 8. No Logic in Tests
- Tests should be trivially correct upon inspection
- Avoid:
  - Conditionals (if/else)
  - Loops
  - Complex calculations
  - String concatenation for assertions
- Use straight-line code with hardcoded expected values

### 9. Write Clear Failure Messages
- Failure messages should clearly distinguish expected vs actual
- Include relevant context and parameters
- Use assertion libraries that provide descriptive messages
- Example: `Expected account balance of $50 but was $30`

## Code Sharing Patterns

### 10. Follow DAMP over DRY
- **DAMP**: Descriptive And Meaningful Phrases
- Some duplication is acceptable if it makes tests clearer
- Avoid excessive abstraction that obscures test intent
- Helper methods should enhance clarity, not just reduce repetition

### 11. Use Helper Methods Effectively
- Create builders/factories for test data with sensible defaults
- Allow tests to specify only relevant values
- Example:
  ```java
  User user = newUser()
      .withName("Alice")
      .withBalance(100)
      .build();
  ```

### 12. Be Careful with Shared Setup
- Use setup methods only for common initialization
- Tests should override setup values when they care about specifics
- Never hide important test context in setup methods
- Each test should clearly show its important inputs

## Test-Driven Development Workflow

### 13. Red-Green-Refactor Cycle
1. **Red**: Write a failing test for the next behavior
2. **Green**: Write minimal code to make the test pass
3. **Refactor**: Clean up code while keeping tests green

### 14. One Behavior at a Time
- Focus on a single behavior per test
- Write the simplest test that could possibly fail
- Don't anticipate future requirements

### 15. Test Coverage Guidelines
- Aim for ~80% unit tests, ~20% integration tests
- Unit tests should be small and fast
- High coverage enables confident refactoring
- Tests serve as living documentation

## Anti-patterns to Avoid

### 16. Don't Test Implementation Details
- Changing private methods shouldn't break tests
- Avoid verifying specific method calls
- Focus on observable outcomes

### 17. Avoid Brittle Test Practices
- Don't couple tests to specific data formats
- Avoid testing UI details in unit tests
- Don't hardcode timeouts or delays

### 18. Prevent Test Interdependence
- Each test should run independently
- Don't rely on test execution order
- Clean up test state properly

## Practical Tips

### 19. Run Tests Frequently
- Run relevant unit tests before committing
- Keep test suites fast (milliseconds per test)
- Fix broken tests immediately

### 20. Treat Test Code as Production Code
- Apply code review standards
- Refactor tests when needed
- Document complex test scenarios
- Version control test utilities

Remember: The goal is to create a sustainable test suite that provides confidence while minimizing maintenance burden. Tests should clarify system behavior and catch real bugs without impeding development velocity.