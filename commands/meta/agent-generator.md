Generate new specialized AI agents focusing on clear outcomes and flexible approaches.

---

Creates outcome-focused agents through collaborative refinement with the user.
Emphasizes agents that deliver specific value rather than following rigid processes.
Each agent should have a clear mission and adapt its approach to the context.

## Process

1. **Understand the Need**

   - What specific outcomes does this agent need to deliver?
   - What decisions or artifacts should it produce?
   - How will the main agent use this agent's output?

2. **Design Philosophy**

   - Focus on WHAT the agent produces, not HOW it works
   - Enable flexible approaches based on context
   - Avoid overly prescriptive processes
   - Make the description actionable for the main agent

3. **Proposal Structure**

   Present proposals that emphasize:

   - Clear deliverables and outcomes
   - When the main agent should invoke this agent
   - What concrete value it provides
   - How its output enables next steps

4. **Agent Creation**
   - Use the flexible template from @/home/krishna/.claude/templates/agent-template.md
   - Focus on mission and outcomes over process
   - Write descriptions that help the main agent decide when to use it
   - Place in appropriate category based on domain

## Output Example

```
## Agent Proposal: motion-planning-specialist

**Category**: specialized/robotics
**Description**: Expert advisor on motion planning algorithms and trajectory optimization. Provides deep technical guidance on motion planning algorithms, analyzing and recommending optimal algorithms for specific robotic constraints.

**What This Agent Delivers**:
- Technical analysis of motion planning problems
- Algorithm recommendations (RRT*, A*, potential fields, MPC, etc.)
- Debugging insights for path planning failures
- Performance optimization strategies
- Best practices for specific robotic constraints

**When the Main Agent Should Use This**:
- Implementing or debugging motion planning algorithms
- Choosing between different path planning approaches
- Optimizing existing trajectory generation code
- Solving complex navigation problems in constrained spaces

**Value for Development**:
Provides specialized expertise that goes beyond general robotics knowledge, helping teams make informed decisions about motion planning implementation and avoid common pitfalls.

**Comparison with Existing Agents**:
- robotics-backend-developer: General robotics implementation skills
- backend-developer: Lacks robotics domain knowledge
- This agent: Deep motion planning expertise and algorithmic knowledge

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

- Agent template structure: @/home/krishna/.claude/templates/agent-template.md
- User-level agents: @/home/krishna/.claude/agents/
