---
name: Bug Report
about: Report a problem with the K3s Manifest Tool
title: '[BUG] '
labels: bug
assignees: ''

---

## Describe the Bug
A clear description of what the bug is. What did you expect to happen, and what actually happened?

Example:
- Expected: `manifest edit [tab][tab]` to list files in the manifest directory.
- Actual: Autocompletion shows "Permission denied" error.

## Steps to Reproduce
List the steps to reproduce the bug.

1. Install the tool with `bash install.sh`.
2. Run `manifest --refresh-cache`.
3. Type `manifest edit` and press `Tab` twice.

## Environment
Provide details about your setup:
- Operating System: (e.g., Ubuntu 22.04)
- Bash Version: (run `bash --version`)
- Manifest Tool Version: (if applicable, e.g., v1.0)
- Other relevant software: (e.g., dialog version, K3s version)

## Logs or Error Messages
Include any error messages, logs, or screenshots.

Example:
```
cat: /tmp/manifest_files_cache: Permission denied
```

## Additional Context
Add any other details, such as workarounds you’ve tried or related issues.

Example:
- Workaround: Manually running `sudo chmod 644 /tmp/manifest_files_cache` fixes the issue temporarily.