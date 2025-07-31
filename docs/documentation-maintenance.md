# Documentation Maintenance Guide

## Purpose

This guide serves as the central reference for maintaining the Claude Code Memory Framework documentation. It tracks known issues, planned improvements, and provides guidelines for ongoing documentation health.

## Maintenance Principles

- **SOLID Documentation**: Each file has single purpose and single audience
  - Single purpose means cohesive content serving one goal - a comprehensive testing guide serves "testing guidance" as its single purpose
  - Avoid fragmentation when content naturally belongs together (e.g., testing philosophy + practices + frameworks)
- **Progressive Disclosure**: Start with discovery commands, navigate to details
- **Prompt Engineering**: Documentation serves as effective prompting for Claude
- **Token Efficiency**: Load only what's needed for each task
- **Continuous Validation**: Regular checks for accuracy and consistency

## Current Framework State

### Core Components

1. **CLAUDE.md Files**
   - Global: `~/.claude/CLAUDE.md` - Single @-reference to `@docs/README.md`
   - Project: `<project>/.claude/CLAUDE.md` - Project-specific context
   - Auto-loaded when Claude enters directories

2. **Directory Structure**
   ```
   ~/.claude/
   ├── CLAUDE.md              # Entry point
   ├── commands/              # 12 slash commands
   ├── docs/                  # Domain-organized documentation
   │   ├── README.md          # Navigation index
   │   ├── decisions/         # 6 ADRs
   │   ├── git/               # 6 git-related docs
   │   ├── memory-framework.md  # Consolidated framework documentation
   │   ├── project-setup/     # 3 setup docs (needs merge)
   │   └── templates/         # 5 templates
   └── agents/                # 50+ sub-agent specifications
   ```

3. **Discovery Commands**
   - `/documentation` - Browse documentation structure
   - `/commands` - List available commands
   - `/memory-framework` - Explore loaded context

### Known Issues

#### High Priority

1. **Structural Debt**
   - [x] `memory-framework/` directory consolidated into single `memory-framework.md` file
   - [x] `git/code-review.md` contains broken copied content (replaced with project-appropriate guidelines)
   - [x] Missing `memory-framework/README.md` and `interaction-guidelines.md` (README.md already exists)

2. **Documentation Drift**
   - [x] Directory examples in docs don't match current structure (verified: examples match reality)
   - [ ] Commands referenced in docs don't match available commands
   - [x] Agent system not documented in architecture (added to memory-framework/architecture.md)

3. **Broken References**
   - [x] Multiple references to non-existent files throughout docs (fixed: absolute paths converted to relative)
   - [x] Template naming inconsistencies (fixed: using `project-claude.md` consistently)

#### Medium Priority

1. **Content Organization**
   - [ ] Redundancy between `git-patterns.md` and `commit-guidelines.md`
   - [ ] ADRs 0003-0006 have inconsistent formatting

2. **Missing Documentation**
   - [ ] No documentation for agents/ directory structure
   - [ ] Missing git branch guidelines
   - [ ] No troubleshooting guides

## Maintenance Tasks

### Regular Validation (Weekly)

1. **Reference Validation**
   ```bash
   # Check all @-references in CLAUDE.md files
   grep -r "@[^[:space:]]*" ~/.claude/ --include="*.md"
   ```

2. **Structure Verification**
   - Run `/memory-framework` to verify loading chain
   - Check `/commands` output matches command files
   - Verify `/documentation` shows all docs

3. **Content Freshness**
   - Review recently modified files for accuracy
   - Check examples still work
   - Verify paths and commands are current

### Prompt Quality Checks

When updating documentation, evaluate:

1. **Clarity**: Would Claude understand this unambiguously?
2. **Structure**: Does it follow LLM-friendly patterns?
3. **Constraints**: Are boundaries clearly defined?
4. **Examples**: Are concrete examples provided?
5. **Success Criteria**: Can Claude determine when a task is complete?

### Evolution Tracking

#### Recent Changes
- Added 50+ agent specifications
- Implemented discovery commands
- Reorganized from type-based to domain-based structure

#### Planned Improvements
1. **Q1 2025**: Merge project-setup into memory-framework
2. **Q1 2025**: Document agent system architecture
3. **Q2 2025**: Implement automated reference validation
4. **Q2 2025**: Add framework health dashboard

## Maintenance Workflows

### Adding New Documentation

1. Determine correct domain directory
2. Follow single purpose/audience principle
3. Add to appropriate index (docs/README.md)
4. Update discovery commands if needed
5. Test with `/memory-framework` command

### Updating Existing Documentation

1. Check for dependencies with grep
2. Update all related references
3. Verify examples still work
4. Test loading with discovery commands
5. Create ADR for significant changes

### Deprecating Documentation

1. Search for all references first
2. Move content if still valuable
3. Update all referencing files
4. Add deprecation notice temporarily
5. Remove after grace period

## Quality Metrics

### Documentation Health Indicators

- **Green**: All references valid, examples work, structure matches implementation
- **Yellow**: Minor inconsistencies, outdated examples, formatting issues
- **Red**: Broken references, structural mismatches, missing critical docs

### Current Status: Yellow

- Several high-priority structural issues
- Documentation drift in multiple areas
- Good foundation but needs cleanup

## Integration Points

### With Commands
- Commands rely on documentation for context
- Discovery commands expose documentation structure
- Command templates must stay synchronized

### With Agents
- Agents reference documentation for guidance
- Memory framework agent maintains this system
- Agent templates follow documentation patterns

### With Projects
- Projects extend global documentation
- Project CLAUDE.md inherits global patterns
- Documentation principles apply at both levels