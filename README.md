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


# Package List

This document provides installation suggestions for the setup which the configuration applies to. These packages are recommended to fully utilize the configuration files provided in the dotfiles repository.

## Recommended Packages to Install for Configurations

### i3wm and Essentials
- **i3wm**: A tiling window manager.
- **i3blocks**: Required for a better bottom bar experience.

### X Related Packages
- Install any necessary X server related packages for your system.

### tmux
- **tmux**: Terminal multiplexer.
- **tmuxinator**: If you want to create tmux sessions that are always the same.

### Neovim
- **nvim**: Modern version of Vim.
- **nvim extensions**: These need to be installed via `nvim/packer`.
- to install packer, just open up NVIM and type `PackerInstall`, after that the NVIM plugins should all work

### Zsh and Related Tools
- **zsh**: A powerful shell.

### oh-my-zsh
- **oh-my-zsh**: A framework for managing your zsh configuration.
  ```sh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

### zsh Plugins
 - zsh-autosuggestions: Suggests commands as you type based on your command history.

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- zsh-syntax-highlighting: Provides syntax highlighting for the shell zsh.

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- zsh-autocomplete (optional): Enhances the auto-completion feature in zsh.

### zsh Theming
- powerlevel10k: A theme for zsh that emphasizes speed, flexibility, and out-of-the-box experience.
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

After installation, you might need to run:
```sh
p10k configure
```

to set the visual themes.

### Recommended Terminal Emulator
urxvt: A highly fact, unicode supported terminal emulator.

You wont always need all of these packages, but this is what the dotfiles are currently customizeing
