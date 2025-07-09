# Integrate gh/glab CLI Tools for Repository Context Enhancement

## Context and Problem Statement

The memory framework and development commands (particularly `/review`) lack integration with GitHub and GitLab platforms, limiting their ability to provide comprehensive context for code reviews and repository operations. Currently, commands operate solely on local git information without access to platform-specific metadata like PR descriptions, linked issues, CI status, and review history. This results in incomplete context for code reviews and repository exploration tasks.

## Considered Options

- **Status quo**: Continue with local git-only operations
- **Web API integration**: Use GitHub/GitLab REST APIs directly
- **CLI tool integration**: Leverage gh/glab CLI tools for information retrieval
- **Hybrid approach**: Combine local git with selective CLI usage

## Decision Outcome

Chosen option: "CLI tool integration", because it provides the most comprehensive and maintainable solution for accessing repository platform features while maintaining consistency with existing command-line workflows.

### Consequences

- Good, because gh/glab CLI tools handle authentication, API versioning, and platform-specific details automatically
- Good, because CLI tools provide rich information retrieval capabilities with structured output (JSON)
- Good, because it integrates seamlessly with existing bash-based command workflows
- Good, because it enables comprehensive code review context including PR metadata, linked issues, and CI status
- Bad, because it introduces dependencies on external CLI tools that may not be installed
- Bad, because it requires graceful degradation when CLI tools are unavailable
- Bad, because it adds complexity to command implementations with platform detection logic

## Implementation Details

### Enhanced Commands

- `/review` command updated to fetch PR context, linked issues, and CI status
- Memory framework triggers updated to automatically load repository context
- Git guidelines enhanced with information retrieval patterns

### Documentation Structure

- Created `docs/git/repository-management.md` for CLI usage patterns
- Updated memory framework architecture with repository triggers
- Enhanced existing git documentation with platform integration

### Platform Support

- GitHub via `gh` CLI tool for PR/issue context and CI status
- GitLab via `glab` CLI tool for MR/issue context and pipeline status
- Automatic platform detection from git remote URLs

Date: 2025-07-08
