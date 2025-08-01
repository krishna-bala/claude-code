# Claude Code Memory Framework Architecture

## Overview

The Claude Code Memory Framework implements a three-tier architecture that separates knowledge (documentation), capabilities (agents), and workflows (commands). This design enables maintainable, extensible, and token-efficient AI-assisted development.

## Three-Tier Architecture

### 1. Documentation Layer (Knowledge Base)

The foundation layer containing all persistent, versioned knowledge that agents and commands reference.

```
docs/                          # Domain-organized reference material
├── git/                      # Version control conventions and practices
│   ├── commit-guidelines.md  # Commit message standards
│   ├── pr-guidelines.md      # Pull request best practices
│   └── git-patterns.md       # Workflow patterns and strategies
├── testing/                  # Testing strategies and frameworks
├── memory-framework/         # Framework documentation (this file)
└── project-setup/           # Project initialization patterns

decisions/                    # Architectural Decision Records (ADRs)
├── 0001-*.md                # Historical decisions with rationale
└── ...                      # Design choices and trade-offs

templates/                   # Reusable patterns and starting points
├── agent-template.md        # How to create new agents
├── command-template.md      # How to create new commands
└── madr-template.md         # Decision record template
```

**Key Characteristics:**
- Single source of truth for all domain knowledge
- Versioned and tracked in git
- Referenced via @-syntax by agents and commands
- Language/framework agnostic where possible

### 2. Agent Layer (Capabilities)

General-purpose AI experts that provide specific capabilities and domain expertise.

```
agents/
├── core/                    # Essential cross-cutting agents
│   ├── code-reviewer        # Security-aware code review
│   ├── performance-optimizer # Performance analysis and optimization
│   └── documentation-specialist # Technical documentation
├── orchestrators/           # Multi-agent coordinators
│   ├── tech-lead-orchestrator # Complex project coordination
│   └── team-configurator    # AI team setup
├── specialized/             # Framework/language specific
│   ├── django/             # Django-specific agents
│   ├── react/              # React-specific agents
│   └── [custom]/           # Your domain-specific agents
└── universal/              # Framework-agnostic specialists
    ├── backend-developer   # Polyglot backend development
    └── api-architect       # API design patterns
```

**Key Characteristics:**
- Each agent has deep expertise in one domain
- Can reference documentation via @-syntax
- Return structured findings for coordination
- Stateless and reusable across projects

### 3. Command Layer (Workflows)

Task-specific compositions that orchestrate multiple agents to accomplish complex workflows.

```
commands/
├── /git-commit             # Orchestrates documentation + git + review
├── /feature               # Orchestrates architect + implement + test
├── /debug                 # Orchestrates analyze + trace + fix
└── /[workflow]            # User-specific workflow patterns
```

**Key Characteristics:**
- Lightweight orchestration recipes (~50 lines)
- Compose multiple agents in sequence
- Load context from documentation
- Encode user-specific patterns and preferences

## Information Flow

```
┌─────────────┐
│User Request │
└─────┬───────┘
      │
      ▼
┌─────────────┐
│   Command   │ ←─── Loads context from ──→ ┌──────────────┐
│(Orchestrator)│                             │Documentation │
└─────┬───────┘                             │  (Knowledge) │
      │                                      └──────────────┘
      ▼                                             ▲
┌─────────────┐     ┌─────────────┐               │
│   Agent 1   │ ──→ │   Agent 2   │ ──→ ... ─────┤
│(Capability) │     │(Capability) │     References│
└─────────────┘     └─────────────┘               │
      │                     │                      │
      └─────────────────────┴──────────────────────┘
                    │
                    ▼
              ┌─────────────┐
              │   Result    │
              └─────────────┘
```

## Example Implementation

### Documentation: Git Commit Guidelines

`docs/git/commit-guidelines.md`:
```markdown
# Git Commit Guidelines

## Format
<type>(<scope>): <subject>

## Types
- feat: New feature
- fix: Bug fix
- docs: Documentation only
- refactor: Code restructuring
- test: Adding tests
- chore: Maintenance

## Best Practices
- Keep subject line under 50 characters
- Use imperative mood
- Reference issues when applicable
```

### Agent: Git Expert

`agents/universal/git-expert.md`:
```markdown
---
name: git-expert
description: |
  Expert in git workflows, conventions, and best practices.
  Examples:
  <example>
  Context: Committing changes with proper conventions
  user: "Apply our git commit conventions"
  assistant: "I'll help apply git best practices and commit conventions"
  </example>
---

# Git Expert

You are an expert in git version control, specializing in commit conventions,
staging strategies, and repository management.

## Context
Always reference:
- @docs/git/commit-guidelines.md for commit standards
- @docs/git/git-patterns.md for workflow patterns
```

### Command: Git Commit

`commands/git-commit.md`:
```markdown
Orchestrates a comprehensive git commit workflow following team conventions.

## Process

1. **Analyze Changes**
   - Use @agent-code-archaeologist to understand modifications
   - Load @docs/git/commit-guidelines.md for standards

2. **Generate Commit Message**
   - Use @agent-documentation-specialist to create message
   - Apply format from guidelines

3. **Apply Git Best Practices**
   - Use @agent-git-expert for staging strategy
   - Ensure atomic commits

4. **Verify Quality**
   - Use @agent-code-reviewer for final check
   - Confirm conventions are followed

## Example
`/git-commit` → Creates well-structured commit following all conventions
```

## Benefits

### 1. Separation of Concerns
- **Documentation**: What we know (persistent knowledge)
- **Agents**: What we can do (reusable capabilities)
- **Commands**: How we do it (user workflows)

### 2. Maintainability
- Single source of truth in documentation
- Agents remain focused on specific expertise
- Commands stay concise as orchestration recipes

### 3. Extensibility
- Add new knowledge → Update docs/
- Add new capabilities → Create agents/
- Add new workflows → Create commands/

### 4. Token Efficiency
- Progressive loading via @-references
- Commands are lightweight coordinators
- Context loaded only when needed

## Best Practices

### Creating Documentation
- Organize by domain, not document type
- Keep language/framework agnostic where possible
- Use clear @-reference paths
- Version all changes in git

### Creating Agents
- Single domain focus per agent
- Include 2-3 invocation examples
- Reference relevant documentation
- Return structured findings

### Creating Commands
- Keep under 50 lines
- Focus on orchestration, not implementation
- Reference both docs and agents
- Encode user-specific patterns

## Migration Path

For existing setups:

1. **Extract embedded knowledge** from commands → docs/
2. **Convert complex commands** → agent capabilities
3. **Refactor remaining commands** → orchestration recipes
4. **Add domain-specific agents** for your tech stack

## Future Enhancements

- Token usage tracking per layer
- Agent capability discovery
- Command composition templates
- Framework health monitoring