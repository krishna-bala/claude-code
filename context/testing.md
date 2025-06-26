Unit Testing Best Practices for AI

Test Structure

1. Use Arrange-Act-Assert pattern: Clearly separate setup, execution, and verification
2. One assertion per test concept: Focus each test on a single behavior
3. Descriptive test names: Use ShouldDoSomethingWhenCondition format that describes the expected behavior

Test Content

4. Test behaviors, not implementation: Focus on what the function should do, not how it does it
5. Use precise assertions: Prefer EXPECT_EQ(actual, expected) over EXPECT_GE(actual, minimum) when exact
   values are deterministic
6. Calculate expected values: Don't hardcode magic numbers - show the math in comments

Test Coverage

7. Test edge cases: Empty inputs, boundary conditions, invalid parameters
8. Test error conditions: How the function handles bad input or failure states
9. Test the contract: Verify all documented behavior and return value semantics

Test Quality

10. Make tests deterministic: Same input should always produce same output
11. Avoid test logic: No loops, conditionals, or complex calculations in tests
12. Use meaningful test data: Choose inputs that clearly demonstrate the test case

Test Organization

13. Group related tests: Use test fixtures or test suites for related functionality
14. Independent tests: Each test should run in isolation without depending on others
15. Clear failure messages: Include context in assertion messages to aid debugging

Common Anti-patterns to Avoid

- Vague assertions like EXPECT_TRUE(result.size() > 0)
- Testing multiple unrelated behaviors in one test
- Relying on specific implementation details that could change
- Using random or non-deterministic test data
