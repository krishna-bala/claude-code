# Testing Patterns

## TDD Cycle

```
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
```

## Test Types

```
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
```

## Test Organization

```
**Test Structure:** Arrange-Act-Assert (AAA) | Given-When-Then (BDD) | Setup→Execute→Verify→Teardown

**Test Data:**
- **Minimal**: Use smallest data set needed
- **Realistic**: Representative of real usage
- **Isolated**: Each test manages its own data
- **Clean**: Reset state between tests
```

## Framework Detection

```
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
```
