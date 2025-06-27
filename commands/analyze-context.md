# Analyze Context

Analyze and optimize CLAUDE.md context for the current project following proven efficiency patterns.

## Assessment Process

1. **Measure Current Usage**:
   - Count words in all CLAUDE.md files and imports
   - Calculate token consumption (~0.75 tokens per word)
   - Identify files contributing most to token usage

2. **Apply 3-Tier Architecture**:
   - **Essential**: Commands, build steps, core patterns (keep in main CLAUDE.md)
   - **Archive**: Detailed docs, verbose guides (move to {topic}-archive/)
   - **Progressive**: Complex content in collapsible sections

3. **Optimization Techniques**:
   - Replace inline content with @-references
   - Condense verbose explanations to key principles
   - Use hierarchical CLAUDE.md files in subdirectories
   - Move comprehensive docs to lazy-loaded archives

## Token Budget Guidelines

**Targets**:
- Main CLAUDE.md: <500 tokens
- Supporting files: <200 tokens each
- Total baseline: <5K tokens
- Performance threshold: <50K tokens

**Structure**:
```
project/
├── CLAUDE.md (essential only)
├── docs-archive/ (detailed guides)
├── component1/
│   └── CLAUDE.md (component-specific)
└── component2/
    └── CLAUDE.md (component-specific)
```

## Assessment Output

Provide analysis with:
- Current token consumption by file
- Optimization opportunities identified  
- Specific restructuring recommendations
- Expected token reduction estimates

## Implementation Steps

1. **Audit**: Measure current context size
2. **Archive**: Move verbose content to archive directories
3. **Condense**: Extract key principles from detailed guides
4. **Reference**: Update @-imports to point to archived content
5. **Validate**: Verify functionality and measure reduction

**Goal**: Sustainable context that scales without performance degradation while maintaining comprehensive guidance through strategic lazy-loading.