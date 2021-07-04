#!/bin/bash
set -euo pipefail
set -x

sudo apt -y install zsh
sudo apt -y install ctags

chsh -s /usr/bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
