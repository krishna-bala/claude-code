# Debugging Workflows

Systematic approaches to identify and resolve issues efficiently.

## When to Use

- Build failures or compilation errors
- Runtime errors or unexpected behavior
- Performance issues or memory leaks
- Test failures or flaky tests
- Integration problems between components

## General Debugging Process

### 1. Reproduce and Isolate
```bash
# Verify the issue is reproducible
# Document exact steps to reproduce
# Isolate to minimal test case
```

### 2. Gather Information
- Error messages and stack traces
- Recent changes (git log/diff)
- System state and environment
- Related logs and outputs

### 3. Form Hypothesis
- What changed recently?
- What assumptions might be wrong?
- What's the simplest explanation?

### 4. Test Systematically
- Start with most likely causes
- Change one variable at a time
- Document what you've tried
- Use binary search for regressions

## Language-Specific Patterns

### Shell/Bash Debugging
```bash
# Enable debug mode
set -x  # Print commands
set -e  # Exit on error

# Check variable values
echo "VAR=$VAR"

# Trace execution
bash -x script.sh
```

### Python Debugging
```python
# Use pdb for interactive debugging
import pdb; pdb.set_trace()

# Print debugging
print(f"DEBUG: {variable=}")

# Check types and values
assert isinstance(obj, expected_type)
```

### Configuration Debugging
- Validate syntax (JSON/YAML validators)
- Check file permissions and paths
- Verify environment variable expansion
- Test with minimal config first

## Common Issues

### Path Problems
- Use absolute paths for debugging
- Check `$PATH` and working directory
- Verify file exists and is readable

### Permission Issues
- Check file ownership: `ls -la`
- Verify execute permissions: `chmod +x`
- Test with different user/sudo

### Environment Differences
- Compare working vs broken environments
- Check installed versions
- Verify dependencies present

## Tools and Commands

- **Git bisect**: Find regression commits
- **strace/ltrace**: Trace system calls
- **diff**: Compare configurations
- **env**: Check environment variables

## Related Resources

- @context/testing.md - Testing strategies
- Project-specific debugging guides
- Language-specific error handling