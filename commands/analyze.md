Intelligent analysis gateway that routes to specialized agents or performs direct analysis for complex problems.

---

This command serves as an intelligent routing gateway that analyzes user requests to determine the most appropriate analysis approach. It can either route to specialized agents for focused expertise or perform comprehensive direct analysis when multi-faceted investigation is needed. The command preserves full requirements analysis and debugging capabilities while adding intelligent routing to leverage specialized agent expertise.

## Command Type

analysis/debugging - [Complexity: deep]

## Tool Usage

- **Primary**: Read (agent documentation, code context, logs), Glob (find available agents), Grep (search for patterns), TodoRead (check existing tasks), TodoWrite (track routing/analysis steps)
- **Secondary**: Bash (diagnostic commands, git operations), WebFetch (external research for complex analysis)
- **Routing**: Uses agent knowledge to make informed routing decisions and provide actionable recommendations
- **Avoid**: Write (unless creating test files), MultiEdit (prefer targeted fixes during debugging)

## Context

- **Files**: Available agents (`agents/` directory), project requirements, existing documentation, stakeholder communications, `~/.claude/guides/debugging-workflows.md`, `~/.claude/context/testing.md`, auto-detected language specs
- **Patterns**: Agent specialization matching, routing decision logic, explicit vs implicit requirements, success criteria, constraint indicators, problem analysis methods, systematic investigation, language-specific tools
- **Dependencies**: Agent availability and capabilities, project context, user needs, technical limitations, error patterns, testing frameworks, domain expertise requirements

## Process

### Intelligent Routing Mode
1. **Request Analysis** - Analyze user request to understand the type of help needed
2. **Context Assessment** - Consider project type, complexity, and domain specifics
3. **Agent Recommendation** - Suggest most appropriate specialized agent(s)
4. **Routing Decision** - Determine whether to route or perform direct analysis
5. **Actionable Guidance** - Provide clear instructions for next steps

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

Produces intelligent routing recommendations or structured analysis. For routing: provides agent recommendations with clear rationale and usage instructions. For requirements analysis: establishes clear foundation with needs, stakeholders, success criteria, and constraints. For debugging: provides problem identification, systematic investigation steps, and verified solution implementation.

<output-template>

## Intelligent Routing Template
# Analysis Routing Recommendation

## Request Assessment

- **Request Type**: [Analysis, debugging, design, testing, etc.]
- **Domain**: [Frontend, backend, database, security, etc.]
- **Complexity**: [Simple, moderate, complex, multi-domain]
- **Urgency**: [Quick solution needed vs deep investigation]

## Recommended Agent(s)

### Primary Recommendation: `[agent-name]`

- **Why this agent**: [Specific expertise match]
- **What they'll provide**: [Expected output and approach]
- **Usage**: `@[agent-name] [your refined request]`

### Alternative Options

- **`[agent-name-2]`**: [When to use this instead]
- **`[agent-name-3]`**: [Another specialized option]

## When to Use Direct Analysis Instead

- **Multi-domain complexity**: [Spans multiple specializations]
- **Requirements gathering**: [Need comprehensive stakeholder analysis]
- **Cross-cutting concerns**: [Touches security, performance, architecture, etc.]
- **Educational deep dive**: [Learning-focused comprehensive breakdown]

## Refined Request Suggestions

### For Recommended Agent
```
@[agent-name] [optimized request based on agent's strengths]
```

### For Direct Analysis
```
/analyze [refined request for comprehensive analysis]
```

## Next Steps

1. **Try the recommended agent first** - They have specialized expertise
2. **Fall back to direct analysis** if the agent's scope is too narrow
3. **Combine approaches** for complex multi-faceted problems

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

## Debugging Analysis Template
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

</output-template>

## Validation

### Intelligent Routing
- Agent recommendation matches request domain and complexity
- Clear rationale provided for routing decision
- Alternative agents suggested when appropriate
- Fallback to direct analysis explained when needed
- Refined request examples are actionable and specific

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

### Intelligent Routing Examples

<example-1>
**Input**: `/analyze Review this Python code for performance issues`
**Output**: Routes to `performance-engineer` with alternative `python-pro`, explaining performance-focused analysis approach
</example-1>

<example-2>
**Input**: `/analyze Add comprehensive testing to our React component`
**Output**: Routes to `test-automator` with alternative `javascript-pro`, providing testing strategy guidance
</example-2>

<example-3>
**Input**: `/analyze Security vulnerabilities in our authentication system`
**Output**: Routes to `security-auditor` with emphasis on authentication security patterns
</example-3>

<example-4>
**Input**: `/analyze Debug why our database queries are slow`
**Output**: Routes to `database-optimizer` with alternative `debugger` for systematic performance investigation
</example-4>

### Direct Analysis Examples

<example-5>
**Input**: `/analyze Requirements for implementing user roles and permissions`
**Output**: Comprehensive requirements analysis with stakeholder assessment and success criteria
</example-5>

<example-6>
**Input**: `/analyze The security, performance, and scalability implications of microservices`
**Output**: Multi-domain analysis covering architecture, security, and performance considerations
</example-6>

<example-7>
**Input**: `/analyze How caching works across different application layers`
**Output**: Educational deep dive explaining caching concepts, trade-offs, and implementation patterns
</example-7>

### Hybrid Routing Examples

<example-8>
**Input**: `/analyze Performance issues in our Python API with database bottlenecks`
**Output**: Routes to `performance-engineer` as primary, `python-pro` and `database-optimizer` as alternatives, with initial analysis
</example-8>

<example-9>
**Input**: `/analyze Complex deployment failures in our Kubernetes cluster`
**Output**: Routes to `deployment-engineer` and `devops-troubleshooter` with systematic debugging approach
</example-9>

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

## Intelligent Routing Logic

### Agent Routing Scenarios

#### Code Quality & Review
- **Triggers**: "review", "code quality", "best practices", "refactor", "clean code"
- **Route to**: `code-reviewer` - For systematic code review and quality assessment
- **Alternative**: `architect-review` - For architectural concerns in code review

#### Testing & Quality Assurance
- **Triggers**: "test", "testing", "unit test", "integration test", "coverage", "TDD"
- **Route to**: `test-automator` - For comprehensive testing strategy and implementation
- **Alternative**: `debugger` - For test-specific debugging issues

#### Performance Optimization
- **Triggers**: "performance", "slow", "optimize", "bottleneck", "memory", "CPU", "latency"
- **Route to**: `performance-engineer` - For systematic performance analysis and optimization
- **Alternative**: `database-optimizer` - For database-specific performance issues

#### Security Concerns
- **Triggers**: "security", "vulnerability", "authentication", "authorization", "encryption", "OWASP"
- **Route to**: `security-auditor` - For security assessment and hardening
- **Alternative**: `error-detective` - For security-related error investigation

#### Architecture & Design
- **Triggers**: "architecture", "design pattern", "system design", "scalability", "microservices"
- **Route to**: `architect-review` - For architectural analysis and recommendations
- **Alternative**: `backend-architect` - For backend-specific architectural concerns

#### Debugging & Error Investigation
- **Triggers**: "debug", "error", "exception", "crash", "failing", "broken", "troubleshoot"
- **Route to**: `debugger` - For systematic debugging methodology
- **Alternative**: `error-detective` - For complex error pattern investigation

#### DevOps & Deployment
- **Triggers**: "deployment", "CI/CD", "docker", "kubernetes", "infrastructure", "pipeline"
- **Route to**: `deployment-engineer` - For deployment strategy and automation
- **Alternative**: `devops-troubleshooter` - For operational issues

#### Language-Specific Analysis
- **Triggers**: Language keywords in context ("Python", "JavaScript", "Go", etc.)
- **Route to**: `[language]-pro` (e.g., `python-pro`, `javascript-pro`, `golang-pro`)
- **Alternative**: Direct analysis for multi-language scenarios

#### Memory Framework Questions
- **Triggers**: "memory framework", "claude docs", "commands", "agents", "documentation structure"
- **Route to**: `memory-framework` - For framework-specific guidance and optimization

### Direct Analysis Scenarios

#### Multi-Domain Complexity
- **When**: Request spans multiple domains (security + performance + architecture)
- **Why**: No single agent covers all aspects comprehensively
- **Example**: "Analyze the security, performance, and scalability of our authentication system"

#### Requirements Gathering
- **When**: Need comprehensive stakeholder analysis and requirements definition
- **Why**: Specialized agents focus on implementation, not requirements discovery
- **Example**: "Analyze requirements for implementing user roles and permissions"

#### Educational Deep Dives
- **When**: User wants to understand concepts deeply across multiple domains
- **Why**: Direct analysis provides broader educational context
- **Example**: "Analyze how caching works and its trade-offs across different layers"

#### Cross-Cutting Concerns
- **When**: Issue affects multiple system components and requires holistic view
- **Why**: Specialized agents might miss system-wide implications
- **Example**: "Analyze the impact of changing our database schema on the entire application"

## Command Intelligence

This command uses intelligent routing to determine the best approach:

### Routing Decision Matrix

1. **Single Domain + Clear Expertise Match** → Route to specialized agent
2. **Multiple Domains + Primary Focus** → Route to primary agent with alternatives
3. **Multiple Domains + Equal Weight** → Direct analysis
4. **Requirements/Discovery Phase** → Direct analysis
5. **Educational/Learning Context** → Direct analysis with agent suggestions

### Triggers for Different Modes

#### Intelligent Routing Mode
- Clear single-domain problems with available specialized agents
- Language-specific questions with corresponding pro agents
- Focused expertise areas (testing, security, performance, etc.)

#### Direct Analysis Mode
- Multi-domain complexity requiring holistic view
- Requirements gathering and stakeholder analysis
- Educational requests spanning multiple areas
- Cross-cutting concerns affecting entire system

#### Hybrid Approach
- Complex requests may get routing recommendations AND initial analysis
- Routing suggestions include fallback to direct analysis when needed
- Multiple specialized agents may be recommended for different aspects
