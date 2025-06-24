Manifest Tool CLI
A CLI tool for managing Kubernetes manifests, allowing users to move files to the manifests directory while retaining their original names, edit files in the directory, and refresh the autocomplete cache. The tool uses a Text User Interface (TUI) with dialog for user interaction and requires sudo privileges for operations in the manifests directory.
Features

Move files to the manifests directory (default: /var/lib/rancher/k3s/server/ manifests/) with their original names.
Edit files in the manifests directory using nano via a TUI menu or direct command.
Support for Bash autocompletion of manifests directory files when editing.
Secure configuration with a restricted .env file.
Comprehensive man page for usage details.
Easy installation via a TUI-driven install.sh script or Debian package.

Installation
Option 1: Using the Debian Package (Recommended)

Add the APT repository:echo "deb [trusted=yes] https://github.com/chvckn0rri5/k3s-manifest-tool/raw/main/apt-repo/ ./" | sudo tee /etc/apt/sources.list.d/k3s-manifest-tool.list


Update APT and install:sudo apt update
sudo apt install k3s-manifest-tool



Option 2: Manual Installation

Clone the repository:git clone https://github.com/chvckn0rri5/k3s-manifest-tool.git
cd k3s-manifest-tool


Run the install script:bash install.sh

The script will:
Prompt to install dialog if missing.
Install the manifest script to /usr/local/bin/ manifest.
Install the configuration file to /etc/ manifest.env.
Install the man page to /usr/local/man/man1/ manifest.1.
Optionally install the autocompletion script to /etc/bash_completion.d/ manifest.
Refresh Bash completion for immediate use.



Usage
manifest [edit [filename] | <filename> | --refresh-cache]


manifest <filename>: Move a file to the manifests directory, retaining its original name (e.g., manifest traefik-config.yaml moves to /var/lib/rancher/k3s/server/ manifests/traefik-config.yaml).
manifest edit: Display a TUI menu to select a file to edit with nano.
manifest edit <filename>: Edit a specific file in the manifests directory.
manifest --refresh-cache: Refresh the autocompletion cache (/tmp/ manifest_files_cache).

See the man page for details:
man manifest

Uninstallation
To uninstall the package:
sudo apt remove k3s-manifest-tool

To remove configuration files as well:
sudo apt purge k3s-manifest-tool
sudo apt autoremove

Note: During uninstallation, you may see warnings like:
dpkg: warning: while removing k3s-manifest-tool, directory '/usr/local/man/man1' not empty so not removed
dpkg: warning: while removing k3s-manifest-tool, directory '/usr/local/bin' not empty so not removed

These warnings are harmless and occur because other software may have files in these shared directories. They do not affect the removal of k3s-manifest-tool or system functionality.
Files

manifest.sh: The main script.
manifest_completion.sh: Autocompletion script for Bash.
manifest.1: Man page.
manifest.env: Configuration file specifying K3S_MANIFEST_PATH.
install.sh: Installation script with TUI.
k3s-manifest-tool_1.2-2_all.deb: Debian package for APT installation.

Requirements

Bash
dialog (for TUI)
sudo privileges
bash-completion (for autocompletion)

Contributing
We welcome contributions to improve the Manifest Tool! Whether you’re fixing a bug, adding a feature, or improving documentation, your help is appreciated. If you’re new to contributing on GitHub, don’t worry—we’ve got you covered with templates and clear steps.
How to Contribute

Report a Bug or Request a Feature:

Go to the Issues tab.
Click "New issue" and select either "Bug Report" or "Feature Request".
Fill out the template with details (e.g., steps to reproduce a bug or a feature description).
Submit the issue to start a discussion.


Submit a Pull Request (PR):

Follow the steps in the Pull Request template:
Fork the Repository:
Go to https://github.com/chvckn0rri5/k3s-manifest-tool.
Click "Fork" to create a copy under your GitHub account.


Clone Your Fork:git clone https://github.com/YOUR-USERNAME/k3s-manifest-tool.git
cd k3s-manifest-tool


Create a Branch:git checkout -b your-branch-name


Make Changes:
Edit files (e.g., manifest.sh, README.md).
Test changes locally:bash install.sh
manifest --refresh-cache
manifest edit




Commit Changes:git add .
git commit -m "Describe your changes (e.g., Fix autocompletion bug)"


Push to Your Fork:git push origin your-branch-name


Create a PR:
Go to your fork on GitHub.
Click "Compare & pull request".
Fill out the PR template (see .github/pull_request_template.md).
Submit the PR.






Discuss and Iterate:

Respond to feedback in the issue or PR.
Make additional commits if changes are requested:git add .
git commit -m "Address feedback"
git push origin your-branch-name





Contribution Guidelines

Use the Bug Report template for issues.
Use the Feature Request template for new ideas.
Follow Bash scripting best practices (e.g., quote variables, add comments).
Test changes locally before submitting a PR.
Keep PRs focused (one bug fix or feature per PR).
For questions or ideas, use the Discussions tab.

Example Contribution
To add a --version option:

Fork and clone the repository.
Create a branch: git checkout -b add-version-option.
Edit manifest.sh to add the option.
Test: bash install.sh; manifest --version.
Commit and push: git add manifest.sh; git commit -m "Add --version option"; git push origin add-version-option.
Create a PR with details in the template.

License
MIT License (see LICENSE for details).
Contact
For questions or support, open an issue or use the Discussions tab.