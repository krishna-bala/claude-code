Direct analysis command for comprehensive requirements gathering, debugging, and investigation of complex problems.

---

This command performs in-depth analysis for requirements discovery, systematic debugging, and comprehensive investigation.
It excels at multi-domain analysis, stakeholder assessment, root cause analysis, and educational deep dives.
For tasks requiring multiple specialized agents, use `/orchestrate` instead.

## Context

- **Resources**: Project requirements, existing documentation, stakeholder communications, system logs
- **Patterns**: Explicit vs implicit requirements, success criteria, constraint indicators, problem analysis methods, systematic investigation
- **Dependencies**: Project context, user needs, technical limitations, error patterns, testing frameworks

## Process

### Requirements Analysis Mode

1. **Analysis Preparation** - Define key terms precisely, identify explicit and implicit needs
2. **Stakeholder Assessment** - Identify all affected parties and their requirements
3. **Success Criteria Definition** - Establish functional and non-functional requirements
4. **Constraint Analysis** - Clarify technical, resource, and cultural limitations
5. **Present Understanding** - Structure findings using analysis template format

### Debugging Mode

1. **Problem Analysis** - Understand expected vs actual behavior, reproduction steps
2. **Information Gathering** - Collect evidence, logs, environment details, recent changes
3. **Hypothesis Formation** - Generate theories about root cause and affected components
4. **Systematic Investigation** - Test hypotheses, add logging, use debugger tools
5. **Solution Implementation** - Fix, verify, test, and document the solution

## Output

Produces structured analysis based on the mode used.
For requirements analysis: establishes clear foundation with needs, stakeholders, success criteria, and constraints.
For debugging: provides problem identification, systematic investigation steps, and verified solution implementation.

<requirements-analysis-output-template>

## Requirements Analysis Template

# Deep Understanding Analysis

## Core Terminology

- **[Term]**: [Clear definition]

## Needs Assessment

- **Explicit**: [Stated requirements]
- **Implicit**: [Underlying needs]
- **Out-of-Scope**: [Excluded items]

## Stakeholders

- **Primary Users**: [Direct users]
- **Secondary**: [Indirectly affected]
- **Maintainers**: [Who maintains solution]

## Success Criteria

- **Functional**: [What it must do]
- **Non-functional**: [Performance requirements]
- **Boundaries**: [Solution scope limits]

## Constraints & Context

- **Technical**: [Technical limitations]
- **Resource**: [Time/budget/personnel limits]
- **Cultural**: [Environmental factors]

## Clarification Needs

- **Assumptions**: [Require validation]
- **Open Questions**: [Need answers]
- **Potential Issues**: [Confusion areas]

</requirements-analysis-output-template>

## Debugging Analysis Template

<debugging-analysis-output-template>

# Debug Analysis

## Problem Summary

- **Issue**: [Brief description of the problem]
- **Impact**: [Who/what is affected]
- **Reproduction**: [Steps to reproduce]

## Investigation

- **Evidence gathered**: [Logs, errors, environment details]
- **Hypotheses tested**: [Theories and their validation]
- **Root cause**: [Identified source of the problem]

## Solution

- **Fix implemented**: [What was changed]
- **Verification**: [How the fix was tested]
- **Prevention**: [Steps to prevent recurrence]

## Next Steps

- **Testing**: [Additional verification needed]
- **Documentation**: [Knowledge to capture]
- **Monitoring**: [Ongoing observation needed]

</debugging-analysis-output-template>

## Validation

### Requirements Analysis

- All key terms are clearly defined
- Explicit and implicit needs are identified
- Success criteria are measurable
- Constraints are documented
- Outstanding questions are listed

### Debugging Analysis

- Problem is clearly identified and reproducible
- Root cause analysis is thorough and systematic
- Solution is tested and verified
- Documentation is updated appropriately

## Examples

<example-1>
**Input**: `/analyze Requirements for implementing user roles and permissions`
**Output**: Comprehensive requirements analysis with stakeholder assessment and success criteria
</example-1>

<example-2>
**Input**: `/analyze The security, performance, and scalability implications of microservices`
**Output**: Multi-domain analysis covering architecture, security, and performance considerations
</example-2>

<example-3>
**Input**: `/analyze How caching works across different application layers`
**Output**: Educational deep dive explaining caching concepts, trade-offs, and implementation patterns
</example-3>

<example-4>
**Input**: `/analyze Debug authentication failures happening intermittently`
**Output**: Systematic debugging approach with hypothesis generation, evidence gathering, and root cause analysis
</example-4>

<example-5>
**Input**: `/analyze Performance bottlenecks across our full stack`
**Output**: Comprehensive performance analysis examining code, database, frontend, and infrastructure layers
</example-5>

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
