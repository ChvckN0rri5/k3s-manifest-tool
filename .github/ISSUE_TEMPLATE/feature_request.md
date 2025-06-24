---
name: Feature Request
about: Suggest a new feature or improvement for the Manifest Tool
title: '[FEATURE] '
labels: enhancement
assignees: ''

---

## Description
Describe the feature or improvement you’d like to see. Why would it be useful?

Example:
- Add a `--show-path` option to print the `K3S_MANIFEST_PATH` value.
- This would help users confirm the manifest directory without checking `/etc/manifest.env`.

## Proposed Solution
Suggest how the feature could be implemented, if you have ideas.

Example:
- Add a new option in `manifest.sh`:
  ```bash
  if [ "$1" = "--show-path" ]; then
      echo "$K3S_MANIFEST_PATH"
      exit 0
  fi
  ```
- Update the man page and `README.md` to document the option.

## Use Case
Explain who would benefit and how they’d use the feature.

Example:
- System administrators debugging K3s configurations would use `--show-path` to verify the manifest directory.

## Alternatives Considered
Mention any workarounds or alternative approaches you’ve thought about.

Example:
- Users can check `/etc/manifest.env` manually, but a command-line option is more convenient.

## Additional Context
Add any other details, such as mockups, references to similar tools, or related issues.

Example:
- Inspired by `kubectl config view` for quick configuration checks.