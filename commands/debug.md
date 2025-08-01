**DEPRECATED**: Use `/analyze` instead for debugging tasks.

---

**⚠️ DEPRECATION NOTICE**: This command has been merged into `/analyze` for unified analysis and debugging workflows. The `/analyze` command now handles both requirements analysis and debugging with the same comprehensive approach and strategies.

**Migration**: Replace `/debug <problem>` with `/analyze <problem>`. The `/analyze` command automatically detects debugging requests and applies the same systematic debugging methodology.

**Why the change**: Combining analysis and debugging into a single command eliminates overlap and provides a more cohesive workflow for understanding both requirements and problems.

---

**Legacy Description**: Troubleshoot issues with strategic approaches and language-specific tools. Include problem description like `/debug Users report login timeout errors on mobile devices`. This command provides structured debugging methodology with comprehensive problem analysis and solution implementation.

## Command Type

workflow - [Complexity: medium]

## Tool Usage

- **Primary**: Read (logs, code), TodoRead (check existing tasks), TodoWrite (track debugging steps), Bash (diagnostic commands)
- **Secondary**: Grep (search patterns), Glob (find files), Edit (apply fixes)
- **Avoid**: Write (unless creating test files), MultiEdit (prefer targeted fixes)

## Context

- **Files**: `~/.claude/guides/debugging-workflows.md`, `~/.claude/context/testing.md`, auto-detected language specs
- **Patterns**: Problem analysis methods, systematic investigation, language-specific tools
- **Dependencies**: Project structure, error patterns, testing frameworks

## Process

1. **Problem Analysis** - Understand expected vs actual behavior, reproduction steps
2. **Information Gathering** - Collect evidence, logs, environment details, recent changes
3. **Hypothesis Formation** - Generate theories about root cause and affected components
4. **Systematic Investigation** - Test hypotheses, add logging, use debugger tools
5. **Solution Implementation** - Fix, verify, test, and document the solution

## Output

Provides structured debugging analysis with problem identification, systematic investigation steps, and verified solution implementation.

<output-template>

## Debug Analysis

### Problem Summary

- **Issue**: [Brief description of the problem]
- **Impact**: [Who/what is affected]
- **Reproduction**: [Steps to reproduce]

### Investigation

- **Evidence gathered**: [Logs, errors, environment details]
- **Hypotheses tested**: [Theories and their validation]
- **Root cause**: [Identified source of the problem]

### Solution

- **Fix implemented**: [What was changed]
- **Verification**: [How the fix was tested]
- **Prevention**: [Steps to prevent recurrence]

### Next Steps

- **Testing**: [Additional verification needed]
- **Documentation**: [Knowledge to capture]
- **Monitoring**: [Ongoing observation needed]

</output-template>

## Validation

- Problem is clearly identified and reproducible
- Root cause analysis is thorough and systematic
- Solution is tested and verified
- Documentation is updated appropriately

## Examples

<example-1>
**Input**: `/debug Users report login timeout errors on mobile devices`
**Output**: Analysis of timeout patterns, mobile-specific issues, and systematic solution implementation
</example-1>

<example-2>
**Input**: `/debug Memory usage increases over time in production`
**Output**: Memory profiling, leak detection, and optimization with verification testing
</example-2>

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

---

**🔄 MIGRATION COMPLETE**: All debugging functionality from this command has been integrated into `/analyze`. Use `/analyze` for all debugging tasks going forward. The `/analyze` command provides the same comprehensive debugging strategies plus intelligent detection of when to use debugging vs requirements analysis approaches.
