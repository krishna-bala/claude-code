# Analyze Compact

Create detailed conversation summary capturing user requests, technical details, and context essential for continuing development work.

## Analysis Process

1. **Chronological Review**: Analyze each message for:
   - User's explicit requests and intents  
   - Technical decisions and code patterns
   - File names, code snippets, function signatures

2. **Accuracy Check**: Verify technical completeness

## Summary Structure

1. **Primary Request**: User's explicit requests and intents
2. **Technical Concepts**: Technologies, frameworks, patterns discussed  
3. **Files Modified**: Specific files examined/created with code snippets
4. **Problems Solved**: Issues resolved and troubleshooting efforts
5. **Pending Tasks**: Explicitly requested work remaining
6. **Current Work**: Precise description of immediate work before summary
7. **Next Step**: Direct continuation of current task (with quotes if applicable)

## Output Format

```
<analysis>
[Thought process ensuring thorough coverage]
</analysis>

<summary>
[Structured summary following above sections]
</summary>
```

**File Save**: If path provided as $ARGUMENTS, save with timestamp: `YYYY-MM-DD_HH-MM-SS_original-filename`
