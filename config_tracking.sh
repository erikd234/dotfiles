#!/bin/bash
# Sets up a special git tracking of all important config files on a system
# After running you should be able to type config status, to see which
# config files are being tracked
# Only run this once per fresh computer install when making a new tracking directory

mkdir -p $HOME/.cfg
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zsh/aliases
config config --local status.showUntrackedFiles no

# reference https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/

