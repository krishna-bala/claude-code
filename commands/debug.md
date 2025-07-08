## Systematic debugging workflow with curated context and language-specific tools.

Troubleshoot issues with strategic approaches and language-specific tools. Include problem description like `/debug Users report login timeout errors on mobile devices`.

**Read context from:**

- `~/.claude/guides/debugging-workflows.md`
- `~/.claude/context/testing.md`
- Auto-detects language specs from current project

## Debugging Process

### 1. Problem Analysis

- **Understand the Problem**
  - What is the expected behavior?
  - What is the actual behavior?
  - When did this start happening?
  - Can you reproduce it consistently?

### 2. Information Gathering

- **Collect Evidence**
  - Error messages and stack traces
  - Logs and debug output
  - Environment details
  - Recent changes

### 3. Hypothesis Formation

- **Generate Theories**
  - What could cause this behavior?
  - Are there similar issues in the codebase?
  - What components are involved?

### 4. Systematic Investigation

- **Test Hypotheses**
  - Add logging and debugging statements
  - Use debugger tools
  - Isolate variables and components
  - Check assumptions

### 5. Solution Implementation

- **Fix and Verify**
  - Implement the fix
  - Test thoroughly
  - Add regression tests
  - Document the solution

## Debugging Strategies

### Code-Level Debugging

- **Print/Log Debugging**: Add strategic logging statements
- **Debugger**: Set breakpoints and step through code
- **Binary Search**: Isolate the problematic code section
- **Rubber Duck**: Explain the problem step by step

### System-Level Debugging

- **Environment Check**: Verify configuration and dependencies
- **Resource Monitoring**: Check memory, CPU, disk usage
- **Network Analysis**: Examine API calls and responses
- **Process Isolation**: Test components independently

### Data-Level Debugging

- **Input Validation**: Verify input data and formats
- **State Inspection**: Check variable values at key points
- **Flow Analysis**: Trace data through the system
- **Boundary Testing**: Test edge cases and limits

## Language-Specific Tools

### Python

- `pdb` debugger
- `logging` module
- `pytest` for test isolation
- `cProfile` for performance

### JavaScript/Node.js

- Browser dev tools
- `console.log()` and `console.debug()`
- Node.js `--inspect` flag
- `jest` for testing

### General Tools

- Git bisect for regression hunting
- IDE debuggers
- System monitoring tools
- Log aggregation

## Common Debugging Patterns

### Performance Issues

1. Profile the application
2. Identify bottlenecks
3. Optimize critical paths
4. Measure improvements

### Memory Leaks

1. Monitor memory usage over time
2. Use memory profilers
3. Check for unclosed resources
4. Review object lifecycles

### Race Conditions

1. Add timing logs
2. Use synchronization tools
3. Test with different timing
4. Review concurrent access patterns

### Integration Issues

1. Test components in isolation
2. Verify interface contracts
3. Check configuration consistency
4. Monitor communication patterns

## Documentation and Follow-up

### Record Findings

- Document the root cause
- Record the solution approach
- Note any workarounds
- Update project documentation

### Prevent Recurrence

- Add tests for the scenario
- Improve error handling
- Update monitoring
- Share learnings with team
