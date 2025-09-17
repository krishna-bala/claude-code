# Tools available to Claude

Claude Code has access to a set of powerful tools that help it understand and modify your codebase:

| Tool             | Description                                          | Permission Required | Available to Agents |
| ---------------- | ---------------------------------------------------- | ------------------- | ------------------- |
| Bash             | Executes shell commands in your environment          | Yes                 | Yes                 |
| Edit             | Makes targeted edits to specific files               | Yes                 | Yes\*               |
| Glob             | Finds files based on pattern matching                | No                  | Yes                 |
| Grep             | Searches for patterns in file contents               | No                  | Yes                 |
| LS               | Lists files and directories                          | No                  | Yes                 |
| MultiEdit        | Performs multiple edits on a single file atomically  | Yes                 | Yes\*               |
| NotebookEdit     | Modifies Jupyter notebook cells                      | Yes                 | Yes\*               |
| Read             | Reads the contents of files                          | No                  | Yes                 |
| Task             | Runs a sub-agent to handle complex, multi-step tasks | No                  | **No**              |
| TodoWrite        | Creates and manages structured task lists            | No                  | Yes                 |
| WebFetch         | Fetches content from a specified URL                 | Yes                 | Yes                 |
| WebSearch        | Performs web searches with domain filtering          | Yes                 | Yes                 |
| Write            | Creates or overwrites files                          | Yes                 | Yes\*               |
| BashOutput       | Retrieves output from background bash shells         | No                  | Yes                 |
| KillBash         | Terminates a running background bash shell           | Yes                 | Yes                 |
| get_current_time | Gets current time in specific timezones (MCP)        | No                  | Yes                 |
| convert_time     | Converts time between timezones (MCP)                | No                  | Yes                 |

\* Note: Write tools (Edit, MultiEdit, NotebookEdit, Write) are typically only given to agents that need to modify files, like merge agents. Discovery and analysis agents usually only get read-only tools.
