# Unit Testing Best Practices for AI

## Test Structure

- Use Arrange-Act-Assert pattern: Clearly separate setup, execution, and verification
- One assertion per test concept: Focus each test on a single behavior
- Descriptive test names: Use ShouldDoSomethingWhenCondition format that describes the expected behavior

## Test Content

- Test behaviors, not implementation: Focus on what the function should do, not how it does it
- Use precise assertions: Prefer EXPECT_EQ(actual, expected) over EXPECT_GE(actual, minimum) when exact
- values are deterministic
- Calculate expected values: Don't hardcode magic numbers - show the math in comments

## Test Coverage

- Test edge cases: Empty inputs, boundary conditions, invalid parameters
- Test error conditions: How the function handles bad input or failure states
- Test the contract: Verify all documented behavior and return value semantics

## Test Quality

- Make tests deterministic: Same input should always produce same output
- Avoid test logic: No loops, conditionals, or complex calculations in tests
- Use meaningful test data: Choose inputs that clearly demonstrate the test case

## Test Organization

- Group related tests: Use test fixtures or test suites for related functionality
- Independent tests: Each test should run in isolation without depending on others
- Clear failure messages: Include context in assertion messages to aid debugging

## Common Anti-patterns to Avoid

- Vague assertions like EXPECT_TRUE(result.size() > 0)
- Testing multiple unrelated behaviors in one test
- Relying on specific implementation details that could change
- Using random or non-deterministic test data
