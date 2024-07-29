# Dotfiles Installation Guide

This repository contains my personal dotfiles for configuring a new system. Follow the steps below to install the dotfiles onto a new system.

## Installation Instructions

### Step 1: Prepare Your System

1. **Backup and Remove Existing Dotfiles**:
   Make sure to delete any existing files that have the same name as the files in this repository. If you don't do this, you will encounter errors when the install script attempts to run `git checkout`.

   In the case of any errors during installation, delete the files specified in the error message and rerun the `config checkout` command as mentioned below. **Do not rerun the install script** after the initial run.

### Step 2: Run the Installation Script

The installation script is available at [this link](https://github.com/erikd234/dotfiles/blob/main/install_dotfiles.sh). You can download and run the script with the following command:

```sh
curl -fsSL https://raw.githubusercontent.com/erikd234/dotfiles/main/install_dotfiles.sh | bash
sh
```
This command downloads the install_dotfiles.sh script and executes it in the $HOME directory.

### Step 3: Handling Errors
If you encounter any errors, they will likely indicate which files need to be deleted. Delete the specified files and rerun the following command:

```sh
config checkout
```
### Note

Do not rerun the install script after the initial run. Only rerun the config checkout command if necessary.
Ensure you have backed up any important files before proceeding with these steps to avoid accidental data loss.
