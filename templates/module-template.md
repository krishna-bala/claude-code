# Module Template

Template for consistent module/component structure in projects.

```markdown
# [Module Name] Structure

Template for creating new [module type] in this project.

## Directory Structure

```
[module-name]/
├── README.md           # Module overview and usage
├── [main-file]         # Entry point
├── [config]            # Configuration
├── src/                # Source code
│   ├── [component1]    # Component description
│   └── [component2]    # Component description
├── tests/              # Test files
│   ├── unit/          # Unit tests
│   └── integration/   # Integration tests
└── docs/              # Module documentation
```

## File Templates

### [Main File Template]
```[language]
/**
 * [Module Name]
 * [Brief description]
 */

// Standard imports
import { [standard] } from '[library]';

// Internal imports
import { [internal] } from './[path]';

// Module implementation
export class [ModuleName] {
    // Implementation
}
```

### [Test File Template]
```[language]
/**
 * Tests for [Module Name]
 */

import { test, expect } from '[test-framework]';
import { [ModuleName] } from '../src/[module]';

describe('[ModuleName]', () => {
    test('[behavior description]', () => {
        // Test implementation
    });
});
```

### [Config File Template]
```[language]
{
    "name": "[module-name]",
    "version": "1.0.0",
    "settings": {
        // Module-specific settings
    }
}
```

## Integration Points

- **With [System]**: How this module connects
- **API Endpoints**: If applicable
- **Events**: Published/subscribed events
- **Dependencies**: Required modules

## Development Workflow

1. Copy this template
2. Rename files and directories
3. Update placeholders
4. Implement core functionality
5. Add tests
6. Update documentation

## Conventions

- Naming: [Convention details]
- File organization: [Pattern]
- Testing: [Requirements]
- Documentation: [Standards]

## Checklist

- [ ] Directory structure created
- [ ] README.md updated
- [ ] Core implementation
- [ ] Unit tests added
- [ ] Integration tests added
- [ ] Documentation complete
- [ ] Code review passed
```

## Customization Guidelines

1. Adapt structure to project needs
2. Include language-specific patterns
3. Reference project conventions
4. Keep template practical
5. Include integration details

## Usage

Copy relevant sections when creating new modules. Remove sections that don't apply. Follow project-specific patterns.