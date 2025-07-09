# Context: claude-framework-organization - 2025-07-08 19:10

## Where We Left Off

- **Working on**: Designing better architecture for version-controlled content in `~/.dotfiles/claude`
- **Current status**: Analyzed SuperClaude structure, identified practical organization patterns
- **Next logical step**: Create shared/ directory and migrate appropriate content

## Key Discoveries

- **What worked**: Standard file references (`file.md#Section`, `file#L12-34`) are more practical than complex templating
- **What didn't work**: SuperClaude's `@include` system is aspirational documentation, not functional
- **Important insights**: YAML good for structured data, Markdown for documentation; avoid over-engineering

## Architecture Insights

- **Current structure**: Well-organized with commands/, context/, guides/, templates/, hooks/
- **SuperClaude patterns**: Has shared/ directory with core patterns and constants
- **Recommended addition**: Create shared/ directory for commonly-referenced content
- **Version control separation**: Exclude runtime directories (projects/, statsig/, todos/)

## Useful References

- **Current structure**: `/home/krishna/.dotfiles/claude/` - commands/, context/, guides/, templates/
- **SuperClaude reference**: `/home/krishna/src/SuperClaude/.claude/shared/` - core patterns
- **Runtime exclusions**: projects/, statsig/, todos/ (Claude Code generated)
- **File reference patterns**: Standard anchors work better than templating systems

## Gotchas & Lessons

- **Watch out for**: Assuming documented features actually work (like `@include` templating)
- **Remember**: Practical organization beats complex systems
- **Performance notes**: YAML vs Markdown choice depends on use case, not inherent efficiency

## To Resume This Work

- **Start by**: Create shared/ directory structure in ~/.dotfiles/claude/
- **Check**: Which content from context/, guides/, templates/ should be consolidated
- **Remember**: Focus on making content easier to find and reference, not building complex systems

## Future Ideas

- **Next features**: Implement the shared/ directory with practical file references
- **Improvements**: Update CLAUDE.md to reference new shared patterns
- **Technical debt**: Clean up any overlapping content between existing directories

## Unresolved Questions

- Which specific content should move to shared/?
- Should we consolidate overlapping content between context/, guides/, templates/?
- What stays in current locations vs gets reorganized?
