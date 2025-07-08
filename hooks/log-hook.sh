#!/bin/bash

# Log hook debugging information

echo "=== HOOK DEBUG LOG ===" >> ~/claude-hook-debug.log
echo "$(date): PostToolUse hook triggered" >> ~/claude-hook-debug.log
echo "Raw input:" >> ~/claude-hook-debug.log
cat >> ~/claude-hook-debug.log
echo "" >> ~/claude-hook-debug.log
echo "---" >> ~/claude-hook-debug.log