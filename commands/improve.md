Intelligently improve code, documentation, architecture, and workflows.

---

Analyzes current context and suggests targeted improvements. Natural language processing determines focus area - simply describe what you want to improve like "memory framework efficiency" or "command organization".

## Process

1. **Parse intent** - Extract focus area from natural language (memory, commands, workflows, or custom)
2. **Analyze current state** - Review relevant files and patterns based on focus
3. **Identify opportunities** - Find gaps, inefficiencies, and enhancement possibilities
4. **Generate recommendations** - Create prioritized, actionable improvements
5. **Provide implementation guidance** - Include concrete steps and examples

## Focus Areas

**Memory Framework**:

- CLAUDE.md efficiency and organization
- Context loading optimization
- @-import structure improvements

**Commands & Workflows**:

- Command discoverability and organization
- Workflow automation opportunities
- Pattern consistency

**Documentation & Architecture**:

- Documentation gaps and redundancy
- Architectural improvements
- Code quality enhancements

## Output Example

```
## Memory Framework Improvements

### 🎯 High Priority

1. **Consolidate duplicate context references**
   - Why: Reduces token usage by 30%
   - How: Merge git-related sections into single @-import
   - Impact: Faster context loading, clearer organization

   Example:
   Replace multiple references with:
   `@docs/git/README.md`

### 📋 Implementation Steps

1. Audit current CLAUDE.md for duplicates
2. Create consolidated reference structure
3. Test with memory-framework command

### 📊 Expected Outcomes
- 30% reduction in context size
- Improved navigation clarity
- Faster agent startup
```

## Examples

**Improve memory efficiency**:

```
/improve memory framework token usage
/improve make the memory system more efficient
```

Analyzes CLAUDE.md structure and suggests optimizations

**Enhance command workflow**:

```
/improve command organization
/improve workflow automation for testing
```

Reviews commands and suggests consolidation or new automation

**Architecture improvements**:

```
/improve project architecture
/improve code organization in src/
```

Analyzes codebase structure and suggests improvements

## Context Integration

- Memory framework architecture: @docs/memory-framework/architecture.md
- Command design principles: @docs/decisions/0005-command-system-design.md
- Best practices guide: @docs/memory-framework/guide.md
