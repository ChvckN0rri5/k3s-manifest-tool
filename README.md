# Manifest Tool

A Bash script for managing K3s manifest files, allowing users to move files to the K3s manifest directory while retaining their original names, edit files in the directory, and refresh an autocompletion cache. The tool uses a Text User Interface (TUI) with `dialog` for user interaction and requires `sudo` privileges for operations in the manifest directory.

## Features

- Move files to the K3s manifest directory (default: `/var/lib/rancher/k3s/server/manifests`) with their original names.
- Edit files in the manifest directory using `nano` via a TUI menu or direct command.
- Support for Bash autocompletion of manifest directory files when editing.
- Secure configuration with a restricted `.env` file.
- Comprehensive man page for usage details.
- Easy installation via a TUI-driven `install.sh` script.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/ChvckN0rri5/manifest-tool.git
   cd manifest-tool
   ```

2. Run the install script:
   ```bash
   bash install.sh
   ```

   The install script will:
   - Prompt to install `dialog` if missing.
   - Install the `manifest` script to `/usr/local/bin/manifest`.
   - Install the configuration file to `/etc/manifest.env`.
   - Install the man page to `/usr/local/man/man1/manifest.1`.
   - Optionally install the autocompletion script to `/etc/bash_completion.d/manifest`.
   - Refresh Bash completion for immediate use.

## Usage

```bash
manifest [edit [filename] | <filename> | --refresh-cache]
```

- `manifest <filename>`: Move a file to the K3s manifest directory, retaining its original name (e.g., `manifest traefik-config.yaml` moves to `/var/lib/rancher/k3s/server/manifests/traefik-config.yaml`).
- `manifest edit`: Display a TUI menu to select a file to edit with `nano`.
- `manifest edit <filename>`: Edit a specific file in the manifest directory.
- `manifest --refresh-cache`: Refresh the autocompletion cache (`/tmp/manifest_files_cache`).

See the man page for details:
```bash
man manifest
```

## Files

- `manifest.sh`: The main script.
- `manifest_completion.sh`: Autocompletion script for Bash.
- `manifest.1`: Man page.
- `manifest.env`: Configuration file specifying `K3S_MANIFEST_PATH`.
- `install.sh`: Installation script with TUI.

## Requirements

- Bash
- `dialog` (for TUI)
- `sudo` privileges
- `bash-completion` (for autocompletion)

## Contributing

We welcome contributions to improve the Manifest Tool! If you're new to contributing via Pull Requests (PRs) on GitHub, follow these steps to get started. No prior experience is required!

### How to Contribute with a Pull Request

1. **Fork the Repository**:
   - Go to the [Manifest Tool repository](https://github.com/ChvckN0rri5/manifest-tool) on GitHub.
   - Click the "Fork" button in the top-right corner to create a copy of the repository under your GitHub account.

2. **Clone Your Fork**:
   - Clone your forked repository to your local machine:
     ```bash
     git clone https://github.com/YOUR-USERNAME/manifest-tool.git
     cd manifest-tool
     ```

3. **Create a Branch**:
   - Create a new branch for your changes. Use a descriptive name (e.g., `fix-bug`, `add-feature`):
     ```bash
     git checkout -b your-branch-name
     ```

4. **Make Changes**:
   - Edit files (e.g., `manifest.sh`, `README.md`) using a text editor.
   - Test your changes locally by running:
     ```bash
     bash install.sh
     manifest --refresh-cache
     manifest edit
     ```
   - Ensure your changes don’t break existing functionality.

5. **Commit Your Changes**:
   - Stage your modified files:
     ```bash
     git add .
     ```
   - Commit with a clear message describing your changes:
     ```bash
     git commit -m "Describe your changes here (e.g., Fix bug in autocompletion)"
     ```

6. **Push to Your Fork**:
   - Push your branch to your GitHub fork:
     ```bash
     git push origin your-branch-name
     ```

7. **Create a Pull Request**:
   - Go to your forked repository on GitHub (e.g., `https://github.com/YOUR-USERNAME/manifest-tool`).
   - You’ll see a prompt to create a Pull Request for your recently pushed branch. Click "Compare & pull request."
   - Fill in the PR template:
     - **Title**: Summarize your changes (e.g., "Add error handling to install.sh").
     - **Description**: Explain what you changed, why, and any testing you did.
     - Mention if it addresses an issue (e.g., "Fixes #123").
   - Click "Create pull request."

8. **Respond to Feedback**:
   - The repository maintainer may review your PR and request changes.
   - Make additional commits on your branch and push them:
     ```bash
     git add .
     git commit -m "Address feedback"
     git push origin your-branch-name
     ```
   - Your PR will update automatically.

9. **Merge**:
   - Once approved, the maintainer will merge your PR into the main repository.
   - You can delete your branch afterward if desired:
     ```bash
     git checkout main
     git branch -d your-branch-name
     ```

### Contribution Guidelines

- **Code Style**: Follow Bash scripting best practices (e.g., use `#!/bin/bash`, quote variables, add comments).
- **Testing**: Test your changes locally before submitting a PR.
- **Issues**: Check the [Issues](https://github.com/<your-username>/manifest-tool/issues) page for tasks to work on, or create a new issue to discuss your idea.
- **Scope**: Small, focused PRs are preferred (e.g., one bug fix or feature per PR).
- **Questions**: If you’re unsure, open an issue or comment on an existing one to discuss your contribution.

### Example Contribution

Let’s say you want to add a new feature to display the manifest directory path. Here’s how you’d do it:

1. Fork and clone the repository.
2. Create a branch:
   ```bash
   git checkout -b add-path-display
   ```
3. Edit `manifest.sh` to add a `--show-path` option.
4. Test the change:
   ```bash
   bash install.sh
   manifest --show-path
   ```
5. Commit and push:
   ```bash
   git add manifest.sh
   git commit -m "Add --show-path option to display K3S_MANIFEST_PATH"
   git push origin add-path-display
   ```
6. Create a PR on GitHub with a description like:
   ```
   Adds a `--show-path` option to print the manifest directory path defined in /etc/manifest.env.
   Tested on Ubuntu 22.04.
   ```

## License

MIT License (see [LICENSE](LICENSE) for details).

## Contact

For questions or support, open an issue on the [GitHub repository](https://github.com/ChvckN0rri5/manifest-tool).