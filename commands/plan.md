Strategic planning command that creates multi-agent orchestration plans for complex tasks with human approval.

---

The /plan command generates detailed execution plans for complex tasks, focusing on intelligent agent orchestration patterns. It presents comprehensive plans for human approval before execution, ensuring transparent and efficient use of specialized agents. Plans leverage parallel execution, phased approaches, and clear orchestration boundaries to maximize effectiveness while respecting system limitations.

## Process

### Phase 1: Analysis & Planning

1. **Request Decomposition**

   - Parse the user request to identify core objectives
   - Determine task complexity and domain requirements
   - Identify opportunities for parallelization
   - Assess need for iterative refinement

2. **Orchestration Strategy Selection**

   - Choose appropriate patterns:
     - **Parallel Investigation**: Multiple agents explore simultaneously
     - **Sequential Refinement**: Agents build on previous results
     - **Evaluator-Optimizer**: Generate-evaluate-improve loops
     - **Voting/Consensus**: Multiple agents assess independently
     - **Hierarchical Decomposition**: Break down by structure/domain

3. **Resource Planning**

   - Estimate token usage (single agent: 4x chat, multi-agent: 15x chat)
   - Identify required agents and their specializations
   - Plan tool usage (MCP, file operations, etc.)
   - Define clear phase boundaries

4. **Plan Generation**
   - Structure phases with clear completion criteria
   - Specify agent responsibilities and expected outputs
   - Include decision points for human input
   - Define success metrics and validation steps

### Phase 2: Approval & Refinement

5. **Plan Presentation**

   - Display structured plan with rationale
   - Highlight orchestration approach
   - Show estimated scope and resources
   - Request yes/no approval

6. **Iterative Refinement** (if needed)
   - Incorporate user feedback
   - Adjust scope or approach
   - Re-present refined plan

### Phase 3: Execution (Post-Approval)

7. **Execute Approved Plan**
   - Follow phases sequentially
   - Launch parallel agents where specified
   - Synthesize results between phases
   - Maintain progress visibility

## Orchestration Capabilities & Limitations

### What We CAN Do

- **Parallel Agent Spawning**: Launch multiple agents simultaneously for independent tasks
- **Sequential Chaining**: Use results from one agent to inform the next
- **Result Synthesis**: Aggregate findings from multiple agents
- **Decision Points**: Choose next actions based on agent outputs
- **Context Passing**: Share information between agent phases

### What We CANNOT Do

- **Real-time Coordination**: Agents cannot communicate during execution
- **State Persistence**: Cannot pause/resume agents mid-task
- **Dynamic Modification**: Cannot change agent tasks after launch
- **Async Patterns**: No true asynchronous agent coordination
- **Cross-agent Messaging**: Agents work in isolation until completion

## Output Example

```
## Execution Plan: Performance Optimization Investigation

### Objectives
1. Identify performance bottlenecks across full stack
2. Prioritize optimization opportunities by impact
3. Generate actionable improvement recommendations
4. Validate fixes don't introduce regressions

### Orchestration Strategy: Parallel Investigation + Synthesis

### Phase 1: Parallel Discovery (3 agents)
**Agents to spawn simultaneously:**

1. **`@performance-engineer`**
   - Task: Profile application code and identify CPU/memory hotspots
   - Output: Performance metrics and bottleneck analysis

2. **`@database-optimizer`**
   - Task: Analyze query patterns and database performance
   - Output: Slow queries list and optimization suggestions

3. **`@frontend-analyst`**
   - Task: Examine client-side performance and rendering issues
   - Output: Bundle size analysis and render performance metrics

**Expected Duration**: 5-10 minutes
**Decision Point**: Review all findings before proceeding

### Phase 2: Deep Dive (2-3 agents based on Phase 1)
**Conditional agents based on findings:**

- If database issues dominate → `@database-optimizer` for specific query rewrites
- If code hotspots found → `@code-optimizer` for algorithmic improvements
- If frontend issues → `@react-specialist` for component optimization

### Phase 3: Solution Validation (2 agents)
**Sequential validation:**

1. **`@test-engineer`**
   - Task: Create performance regression tests
   - Output: Test suite for critical paths

2. **`@code-reviewer`**
   - Task: Review proposed optimizations for correctness
   - Output: Approved changes with risk assessment

### Success Metrics
- 50% reduction in p95 response time
- No functional regressions
- Maintainable solutions

### Resource Estimate
- Total agents: 7-8
- Estimated tokens: ~50k-75k
- Time: 15-20 minutes

Approve this execution plan? (yes/no)
```

## Examples

### Complex Debugging with Parallel Investigation

<example>
**Input**: `/plan Debug authentication failures happening intermittently in production`

**Plan Output**:

- Phase 1: Parallel investigation (3 agents)
  - `@error-detective`: Analyze error patterns in logs
  - `@security-auditor`: Check auth configuration
  - `@database-optimizer`: Examine session/token queries
- Phase 2: Reproduction attempt (1 agent)
  - `@debugger`: Use findings to reproduce issue
- Phase 3: Fix development (2 agents)
  - `@backend-developer`: Implement fix
  - `@test-automator`: Create test coverage
    </example>

### Architecture Review with Hierarchical Decomposition

<example>
**Input**: `/plan Review and document our microservices architecture`

**Plan Output**:

- Phase 1: High-level mapping (1 agent)
  - `@architect-review`: Map service boundaries
- Phase 2: Parallel service analysis (N agents based on Phase 1)
  - `@code-archaeologist`: One per service for deep dive
- Phase 3: Synthesis (2 agents)
  - `@documentation-specialist`: Create architecture docs
  - `@architect-review`: Identify improvement opportunities
    </example>

### Security Audit with Voting Pattern

<example>
**Input**: `/plan Comprehensive security audit of our API endpoints`

**Plan Output**:

- Phase 1: Independent assessments (3 agents)
  - `@security-auditor`: Three parallel instances with same codebase
- Phase 2: Consensus building
  - Lead orchestrator: Identify agreements and conflicts
- Phase 3: Deep investigation (2 agents)
  - `@security-auditor`: Focus on high-consensus vulnerabilities
  - `@backend-developer`: Prototype fixes for critical issues
    </example>

### Feature Implementation with Evaluator-Optimizer

<example>
**Input**: `/plan Implement caching layer for improved performance`

**Plan Output**:

- Phase 1: Design (1 agent)
  - `@architect-review`: Design caching strategy
- Phase 2: Implementation (1 agent)
  - `@backend-developer`: Implement initial caching
- Phase 3: Optimization loop (2 agents, may repeat)
  - `@performance-engineer`: Evaluate cache effectiveness
  - `@backend-developer`: Optimize based on metrics
- Phase 4: Finalization (1 agent)
  - `@documentation-specialist`: Document caching architecture
    </example>

## Planning Best Practices

### Effective Plans Include

1. **Clear Phases**: Distinct stages with completion criteria
2. **Parallel Opportunities**: Identify independent work streams
3. **Decision Points**: Moments for human input or course correction
4. **Resource Awareness**: Token and time estimates
5. **Success Metrics**: Measurable outcomes

### Orchestration Patterns

- **Parallel when possible**: Maximize simultaneous exploration
- **Sequential when dependent**: Chain agents when order matters
- **Iterate when refining**: Use loops for optimization
- **Vote when uncertain**: Multiple perspectives for critical decisions

### Common Anti-patterns to Avoid

- Trying to make agents wait for each other
- Planning real-time agent communication
- Over-orchestrating simple tasks
- Ignoring token budget implications

## Context Integration

- Agent capabilities: @../agents/README.md
- Orchestration patterns: @~/building-effective-agents.md
- Multi-agent systems: @~/multi-agent-research-system.md
- Command templates: @../templates/command-template.md
