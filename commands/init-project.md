Set up .claude/ directory structure for context-aware development in the current project.

---

Initialize project memory framework with CLAUDE.md, specs, and guides directories. Run from project root to create the memory framework structure. Auto-detects project type and creates appropriate initial configuration.

## Command Type

workflow - [Complexity: medium]

## Tool Usage

- **Primary**: Write (create files), Bash (create directories), TodoRead (check existing tasks), TodoWrite (track setup progress)
- **Secondary**: Read (template files), Glob (detect project files), Grep (find patterns)
- **Avoid**: Edit (creates new files), MultiEdit (single file creation)

## Context

- **Files**: `@docs/templates/project-claude-md.md`, `@docs/templates/spec-template.md`, `@docs/project-setup/setup.md`
- **Patterns**: Project type detection, framework identification, build tool recognition
- **Dependencies**: Project root directory, existing configuration files, technology stack

## Process

1. **Check Existing Structure**

   - Look for existing `.claude/` directory
   - Detect project type and technologies
   - Identify build tools and frameworks

2. **Create Directory Structure**

   ```bash
   mkdir -p .claude/{specs,guides,templates,sessions}
   touch .claude/sessions/.current-session
   ```

3. **Generate Project CLAUDE.md**

   - Use template from `@docs/templates/project-claude-md.md`
   - Auto-detect build/test commands
   - Include detected tech stack
   - Add references to relevant specs

4. **Create Initial Specs**

   - Add README.md to specs directory
   - Suggest language-specific standards
   - Include relevant tool configurations

5. **Provide Next Steps**
   - List created files
   - Suggest customizations
   - Recommend specs to add

## Context Loading

Loads:

- `@docs/templates/project-claude-md.md` - Project template
- `@docs/templates/spec-template.md` - For creating specs
- `@docs/project-setup/setup.md` - Setup guidance

## Detection Rules

### Language Detection

- Python: `requirements.txt`, `setup.py`, `*.py`
- JavaScript/Node: `package.json`, `*.js`
- TypeScript: `tsconfig.json`, `*.ts`
- Go: `go.mod`, `*.go`

### Framework Detection

- React: `package.json` contains "react"
- Django: `manage.py`, `settings.py`
- Express: `package.json` contains "express"

### Tool Detection

- Docker: `Dockerfile`, `docker-compose.yml`
- CI/CD: `.github/workflows/`, `.gitlab-ci.yml`

## Output Format

```markdown
## Project Initialized ✅

### Created Structure
```

.claude/
├── CLAUDE.md # Project context
├── specs/
│ └── README.md # Spec index
├── guides/
│ └── README.md # Guide index
├── templates/
│ └── README.md # Template index
└── sessions/ # Development sessions
└── .current-session # Active session tracker

```

### Detected Configuration
- **Language**: [Detected language]
- **Framework**: [Detected framework]
- **Build Tool**: [Detected tool]
- **Test Runner**: [Detected runner]

### Suggested Next Steps
1. Edit `.claude/CLAUDE.md` with project specifics
2. Add language standards: `[suggested spec]`
3. Document architecture in guides/
4. Start first session: `/session-start [session-name]`
5. Commit `.claude/` to version control

### Recommended Specs
Based on your project:
- `@docs/templates/spec-template.md` → `.claude/specs/[language]-standards.md`
- Consider adding: [Other relevant specs]
```

## Validation

- `.claude/` directory structure is created successfully
- Project CLAUDE.md is generated with detected configuration
- Initial spec and guide README files are created
- Project type and framework are correctly identified
- Directory structure matches template requirements

## Examples

<example-1>
**Input**: `/init-project` (in Python Django project)
**Output**: Creates .claude/ structure with Python/Django-specific CLAUDE.md and suggested specs
</example-1>

<example-2>
**Input**: `/init-project` (in Node.js React project)
**Output**: Creates .claude/ structure with JavaScript/React-specific configuration and templates
</example-2>

## Related Commands

- `/load-context` - Load project context
- `/list-specs` - Show available specs
- `/session-start` - Begin first development session
- `@docs/project-setup/setup.md` - Detailed setup guide
- `@docs/project-setup/session-management.md` - Session workflow guide
