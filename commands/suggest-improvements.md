# Memory Improvements - Optimize project memory architecture and documentation

Analyze and suggest improvements to CLAUDE.md structure, context organization, and workflow patterns. Focus on specific areas like `/memory-improvements token efficiency` or `/memory-improvements command organization`.

**Read context from:**
- `~/.claude/context/memory-framework.md`
- `~/.claude/guides/memory-framework-guide.md`
- Project .claude/ directory structure

## Process

1. **Analyze Current Memory Architecture**
   - Review project .claude/ directory structure
   - Examine CLAUDE.md content and organization
   - Identify gaps in context coverage
   - Assess token efficiency and organization

2. **Evaluate User Patterns and Learnings**
   - Analyze frequently used workflows
   - Identify repetitive context loading patterns
   - Review session history for emerging needs
   - Consider project evolution and scale

3. **Generate Memory Improvements**
   - Suggest new project-level commands
   - Recommend CLAUDE.md restructuring
   - Propose new specs or guides
   - Identify archival opportunities

4. **Prioritize and Present**
   - High-impact architectural improvements first
   - Consider maintenance vs benefit trade-offs
   - Provide implementation templates

## Memory Analysis Areas

Automatically considers:
- CLAUDE.md token efficiency and organization
- Missing or outdated project-specific context
- Opportunities for project-level commands
- Context loading patterns and optimization

## Output Format

<memory-improvements-template>
## Memory Architecture Improvements

### 🎯 High Priority
1. **[Architecture Improvement]**
   - Why: [Memory framework benefit]
   - How: [Implementation approach]
   ```markdown
   // Example CLAUDE.md structure or command
   ```

### 📁 Project Structure
- **[Directory organization]**: [Benefit and approach]
- **[File consolidation]**: [Token efficiency improvement]

### ⚡ Context Efficiency
- **[Loading optimization]**: [Impact and implementation]
- **[Token reduction]**: [Archival or restructuring approach]

### 🔧 Workflow Commands
- **[New project command]**: [Workflow improvement and template]
- **[Command consolidation]**: [Simplification opportunity]

### 📚 Documentation Architecture
- **[Spec creation]**: [Missing context area]
- **[Guide enhancement]**: [Workflow documentation need]

### 📋 Implementation Templates
- CLAUDE.md template: `@templates/project-claude-md.md`
- Command template: `@templates/command-template.md`
- Spec template: `@templates/spec-template.md`
</memory-improvements-template>

## Examples

### Example: Repetitive Context Loading
Input: User frequently loads same combination of files
Output: Suggest creating project-specific command

### Example: Large CLAUDE.md File
Input: Project CLAUDE.md exceeds token budget
Output: Suggest archiving detailed content, keeping essentials

### Example: Missing Project Patterns
Input: Project lacks language-specific standards
Output: Suggest creating project specs for consistent patterns

## Related Commands

- `/context` - Context management and optimization
- `/init-project` - Project initialization
- `/analyze` - Deep project analysis