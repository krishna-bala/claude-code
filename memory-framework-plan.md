# Practical Claude Code Memory Framework Architecture

## Overview

A simple, effective memory system using Markdown files that Claude Code can read naturally. No rule engines, no JSON parsing - just organized guidance that works with Claude's existing file reading and context loading capabilities.

## Directory Structure

### Global Configuration (~/.claude/)
Located at `/home/krishna/.dotfiles/claude` (symlinked from `~/.claude`)

```
~/.claude/
├── CLAUDE.md                    # Global context and framework overview
├── guides/                      # Universal development workflows
│   ├── README.md               # Guide index
│   ├── debugging-workflows.md  # General debugging approaches
│   ├── project-setup.md        # How to set up project .claude/ directories
│   └── context-loading-patterns.md # Best practices for organizing specs
├── commands/                    # Enhanced slash commands
│   ├── check-standards.md      # Code standards validation
│   ├── suggest-improvements.md # Context-aware suggestions
│   ├── load-context.md         # Smart context loading
│   ├── init-project.md         # Initialize .claude/ in projects
│   └── [existing commands]     # Current slash commands
├── context/                     # Essential development guidelines
│   ├── memory-framework.md     # This framework documentation
│   └── [existing files]        # Current context files
└── templates/                   # Reusable templates
    ├── README.md               # Template index
    ├── project-claude-md.md    # Template for project CLAUDE.md
    ├── spec-template.md        # Template for creating specs
    └── guide-template.md       # Template for creating guides
```

### Project-Specific Configuration (<project>/.claude/)
Each project maintains its own `.claude/` directory:

```
<project>/
└── .claude/
    ├── CLAUDE.md               # Project-specific context
    ├── specs/                  # Project requirements and standards
    │   ├── README.md          # Spec index and navigation
    │   ├── cpp-standards.md   # C++ coding standards
    │   ├── python-standards.md # Python conventions
    │   ├── lua-patterns.md    # Lua scripting guidelines
    │   └── bazel-practices.md # Build system practices
    ├── guides/                 # Project-specific workflows
    │   └── architecture.md    # Project architecture guide
    └── templates/              # Project-specific templates
        └── module-template.md # Project module structure
```

## Core Principles

### 1. Context-Aware Loading
- Load specs based on file types being worked on
- Reference guides when specific problems are detected
- Use commands to trigger appropriate workflows

### 2. Separation of Concerns
- Global: Universal tools, commands, and workflows
- Project: Language specs, architecture, and project-specific patterns

### 3. Progressive Disclosure
- Start with essentials in main CLAUDE.md
- Load detailed guidance on demand
- Keep token usage manageable

## Implementation Plan

### Phase 1: Update Global Configuration

1. **Update CLAUDE.md** to reflect the memory framework:
   - Add section explaining global vs project separation
   - Document how to use specs/guides/templates
   - Reference context-aware loading principles

2. **Create global guides/ directory**:
   - `guides/README.md` - Guide index
   - `guides/debugging-workflows.md` - General debugging approaches
   - `guides/project-setup.md` - Setting up project .claude/ directories
   - `guides/context-loading-patterns.md` - Organizing specs best practices

3. **Create global templates/ directory**:
   - `templates/README.md` - Template index
   - `templates/project-claude-md.md` - Project CLAUDE.md template
   - `templates/spec-template.md` - Creating new spec files
   - `templates/guide-template.md` - Creating new guide files

4. **Add framework-supporting commands**:
   - `commands/check-standards.md` - Validate against project specs
   - `commands/suggest-improvements.md` - Context-aware suggestions
   - `commands/load-context.md` - Smart context loading
   - `commands/init-project.md` - Initialize project .claude/ structure

5. **Document the framework**:
   - `context/memory-framework.md` - Complete system explanation

### Phase 2: Project Integration (per-project basis)

When working on a specific project:

1. Run `/init-project` to create `.claude/` structure
2. Add project-specific specs based on technologies used
3. Document architecture and patterns in project guides
4. Create project-specific templates as needed

## File Organization Patterns

### Specification Files (project-specific)

```markdown
# [Language/Tool] Standards

## Quick Reference
- Key principles (3-5 bullet points)
- Common patterns
- Critical do's and don'ts

## Detailed Guidelines
- Comprehensive standards
- Examples and counter-examples
- Integration with other tools

## Context Triggers
When to reference this spec:
- File patterns: *.cpp, *.h
- Common scenarios: optimization, memory management
- Problem indicators: build errors, memory leaks
```

### Guide Files (global or project)

```markdown
# [Workflow Name]

## When to Use
- Specific triggering situations
- Problem indicators

## Process
1. Step-by-step approach
2. Decision points
3. Common variations

## Tools and Commands
- Relevant slash commands
- External tools
- Integration points
```

### Command Files (global)

```markdown
# [Command Description]

## Usage
Brief description

## Process
1. Analyze context
2. Load relevant specs/guides
3. Perform analysis
4. Present results

## Context Loading
- Always load: [files]
- Conditionally load based on file types
```

## Integration Examples

### Starting Work Session

```bash
# Claude automatically loads global CLAUDE.md
claude

# In a project with .claude/ directory
> Detected project configuration: .claude/CLAUDE.md
> Available specs: cpp-standards, python-standards
> Use /check-standards to validate code
```

### Code Standards Check

```bash
/check-standards

# Loads project specs and analyzes:
# - C++ files against cpp-standards.md
# - Python files against python-standards.md
# - Suggests improvements
```

### Initialize New Project

```bash
/init-project

# Creates:
# - .claude/CLAUDE.md (from template)
# - .claude/specs/README.md
# - .claude/guides/README.md
# - Suggests relevant specs based on project
```

## Benefits

1. **Immediate Usability**: Works with Claude's existing file reading
2. **Maintainable**: Simple Markdown, version control friendly
3. **Intelligent**: Context-aware loading reduces token usage
4. **Flexible**: Adapts to any project or technology stack

## Implementation Status

### ✅ Completed

1. **Updated global CLAUDE.md** with:
   - Memory framework architecture section
   - Context loading (lazy loading) instructions
   - Framework resources with backtick-wrapped references
   - Quick access commands

2. **Created guides/ directory** with:
   - README.md - Guide index
   - debugging-workflows.md - Systematic debugging
   - project-setup.md - Project initialization
   - context-loading-patterns.md - Loading strategies
   - memory-framework-guide.md - User guide

3. **Created templates/ directory** with:
   - README.md - Template index
   - project-claude-md.md - Project CLAUDE.md template
   - spec-template.md - Specification template
   - guide-template.md - Guide template
   - command-template.md - Command template
   - module-template.md - Module structure template

4. **Added framework commands**:
   - check-standards.md - Validate against specs
   - suggest-improvements.md - Context-aware suggestions
   - load-context.md - Smart context loading
   - init-project.md - Project initialization
   - list-specs.md - List available specs

5. **Created framework documentation**:
   - context/memory-framework.md - Technical documentation
   - context/git-commit-guidelines.md - Git commit context
   - context/pr-guidelines.md - PR creation context

### Key Improvements Made

1. **Lazy Loading Implementation**
   - Used backticks in CLAUDE.md to prevent auto-loading
   - Clear instructions for when to load specific context
   - Git operations trigger appropriate guideline loading

2. **Token Efficiency**
   - Kept all files under 200 lines
   - Used progressive disclosure pattern
   - Clear separation of concerns

3. **Practical Focus**
   - Commands have clear, actionable processes
   - Templates include customization guidelines
   - Guides focus on real workflows

### Lessons Learned

1. **Backticks are crucial** for preventing automatic loading of @-references
2. **Context descriptions** in CLAUDE.md act as "tool descriptions" for the agent
3. **File organization** mirrors the documentation philosophy of small, focused files
4. **Commands** can intelligently load context based on detection rules

### Next Steps

1. Test the framework with a real project using `/init-project`
2. Create project-specific specs based on actual needs
3. Refine commands based on usage patterns
4. Add more specialized guides as patterns emerge
5. Consider creating language-specific command variations

### Usage Instructions

To use the framework:
1. Global context is already active via ~/.claude/CLAUDE.md
2. For new projects: Run `/init-project` from project root
3. For existing projects: Manually create `.claude/` structure
4. Customize specs and guides based on project needs
5. Commit `.claude/` directory to version control

The framework is now fully operational and ready for use!