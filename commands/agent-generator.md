Generate new specialized AI agents following a systematic, incremental approval process.

---

Creates specialized agents through an iterative refinement process with user approval at each stage.
Analyzes requirements, proposes minimal agent sets, and generates agents following the established template structure.
Emphasizes creating only necessary agents with clear, focused capabilities.

## Process

1. **Requirements Analysis**

   - Extract agent purpose and domain from user context
   - Identify specific capabilities needed
   - Determine if existing agents can be enhanced vs. creating new ones

2. **Proposal Generation**

   - Create detailed agent proposal with justification
   - Include specific examples of when the agent would be used
   - Compare with existing agents to avoid duplication
   - Present for yes/no approval

3. **Iterative Refinement**

   - Incorporate user feedback
   - Refine scope and capabilities
   - Re-present updated proposal
   - Continue until approved or rejected

4. **Agent Creation**
   - Load agent template from `@templates/agent-template.md`
   - Generate agent file with approved specifications
   - Place in appropriate category (core, orchestrators, specialized, universal)
   - Update CLAUDE.md AI Team Configuration if needed

## Output Example

```
## Agent Proposal: motion-planning-specialist

**Category**: specialized/robotics
**Purpose**: Deep expertise in motion planning, trajectory generation, and path optimization

**Key Capabilities**:
- Trajectory generation and optimization
- Dynamic obstacle avoidance algorithms
- Path planning with kinematic constraints
- Safety field computation
- Real-time replanning strategies

**When to Use**:
- "Optimize trajectory generation for smoother forklift motion"
- "Debug path planning failures in tight spaces"
- "Implement adaptive safety fields for dynamic obstacles"

**Justification**: Motion planning is a critical subsystem requiring specialized algorithmic knowledge beyond general robotics engineering

**Comparison with Existing Agents**:
- robotics-backend-developer: Has general robotics skills but not deep planning expertise
- backend-developer: Too generic, lacks motion planning domain knowledge

Approve this agent? (yes/no)
```

## Examples

**Proposing a robotics specialist**:

```
/agent-generator I need help with motion planning algorithms in our robotics codebase
```

Analyzes needs, proposes motion-planning-specialist with refinement cycles

**Enhancing existing agent**:

```
/agent-generator Our API design needs robotics-specific patterns for sensor data streaming
```

Proposes enhancement to existing api-architect rather than new agent

**Domain-specific agent**:

```
/agent-generator We have complex sensor fusion and calibration challenges across LIDAR and cameras
```

Proposes sensor-fusion-engineer after comparing with existing capabilities

## Context Integration

- Agent template structure: @templates/agent-template.md
- User-level agents: @~/.claude/agents/

## Sub-agent Delegation

For complex agent generation tasks:

- Use @agent-code-archaeologist to analyze existing codebase patterns
- Use @agent-documentation-specialist to create comprehensive agent documentation
- Use @agent-team-configurator to update team assignments after agent creation
