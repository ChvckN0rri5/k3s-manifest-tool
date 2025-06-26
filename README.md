# K3s Manifest Tool

![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)
![Version: 1.3-2b](https://img.shields.io/badge/Version-1.3--2b-informational)

A command-line tool for managing Kubernetes manifest files in a K3s environment. It provides a simple, secure, and interactive way to move and edit manifests in the K3s server directory, with support for autocompletion and a Text User Interface (TUI).

## Features

- **Move Manifests**: Securely move YAML files to the K3s manifest directory, retaining their original names.
- **Interactive TUI**: An integrated `dialog`-based menu to select and edit files with `nano`.
- **Direct Editing**: Edit specific manifest files directly from the command line.
- **Bash Autocompletion**: Autocompletes filenames in the manifest directory when using `manifest edit`.
- **Secure by Default**: Uses `sudo` for file operations and restricts configuration file permissions.
- **Simple Installation**: Install via a dedicated APT repository or a guided installer script.
- **Documented**: Includes a comprehensive `man` page.

## Requirements

- `bash`
- `dialog` (for the TUI)
- `sudo`
- `bash-completion` (for autocompletion)

## Installation

There are two ways to install the Manifest Tool. The recommended method is using the APT repository, which handles dependencies and updates automatically.

### Option 1: APT Repository (Recommended)

1.  **Add the APT repository:**
    ```bash
    echo "deb [trusted=yes] https://github.com/chvckn0rri5/k3s-manifest-tool/raw/main/apt-repo/ ./" | sudo tee /etc/apt/sources.list.d/k3s-manifest-tool.list
    ```

2.  **Update your package list and install the tool:**
    ```bash
    sudo apt update
    sudo apt install k3s-manifest-tool
    ```

### Option 2: Manual Installation Script

If you prefer not to use the APT repository, you can use the installer script.

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/ChvckN0rri5/k3s-manifest-tool.git
    cd k3s-manifest-tool
    ```

2.  **Run the installer:**
    ```bash
    sudo bash install-manifest
    ```
    The script will guide you through the installation process.

## Usage

The tool is designed to be simple and intuitive.

| Command                       | Description                                                                                             |
| ----------------------------- | ------------------------------------------------------------------------------------------------------- |
| `manifest <filename.yaml>`    | Moves the specified file to the K3s manifest directory.                                                 |
| `manifest edit`               | Opens a TUI menu to select and edit a file from the manifest directory.                                 |
| `manifest edit <filename>`    | Edits a specific file directly. Autocompletion is available.                                            |
| `manifest --refresh-cache`    | Manually refreshes the autocompletion cache. This is automatically done after most operations.          |
| `manifest -c`, `--config`     | Opens the configuration file (`/etc/manifest.env`) for editing.                                         |
| `man manifest`                | Shows the manual page for detailed documentation.                                                       |

### Examples

-   **Move a file:**
    ```bash
    manifest traefik-config.yaml
    # Moves file to /var/lib/rancher/k3s/server/manifests/traefik-config.yaml
    ```

-   **Edit using the TUI:**
    ```bash
    manifest edit
    ```


-   **Edit a specific file with autocompletion:**
    ```bash
    manifest edit tr[TAB]  # Autocompletes to traefik-config.yaml
    ```

## Configuration

The tool's configuration is stored in `/etc/manifest.env`. This file is created during installation with restricted permissions (`600`) and is owned by `root`.

-   `K3S_MANIFEST_PATH`: The absolute path to the K3s manifest directory.
    -   Default: `/var/lib/rancher/k3s/server/manifests`
-   `TEXT_EDITOR`: The text editor used for editing files.
    -   Default: `nano`

## Uninstallation

### From APT Package

If you installed the tool via APT, use the `apt` command to remove it.

-   **Remove the package:**
    ```bash
    sudo apt remove k3s-manifest-tool
    ```
-   **Remove the package and configuration files:**
    ```bash
    sudo apt purge k3s-manifest-tool
    sudo apt autoremove
    ```

### From Manual Installation

If you used the `install-manifest` script, run it with the `--uninstall-manifest` flag from within the repository directory.

```bash
sudo bash install-manifest --uninstall-manifest
```

<details>
<summary>Contributing</summary>

We welcome contributions to improve the Manifest Tool! Whether you’re fixing a bug, adding a feature, or improving documentation, your help is appreciated.

### How to Contribute

1.  **Report a Bug or Request a Feature**:
    -   Go to the [Issues](https://github.com/chvckn0rri5/k3s-manifest-tool/issues) tab.
    -   Click "New issue" and select either "Bug Report" or "Feature Request".
    -   Fill out the template with details.

2.  **Submit a Pull Request (PR)**:
    -   Fork the repository and create a new branch.
    -   Make your changes and test them locally.
    -   Commit your changes and push them to your fork.
    -   Create a Pull Request and fill out the template.

For more details, please see the [contribution guidelines](.github/pull_request_template.md).

</details>

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
