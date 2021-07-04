#!/bin/bash
set -euo pipefail
set -x

sudo yum -y install zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
