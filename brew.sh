#!/bin/bash
set -euo pipefail
set -x

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Xcode License acceptance if not done yet
sudo xcodebuild -license accept

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion

# Install `wget` with IRI support.
brew install wget

# Install more recent versions of some OS X tools.
brew install vim

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install git
brew install imagemagick
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install tree
brew install webkit2png
brew install zopfli

# mpomarole's dev related packages
brew install awscli
brew install jq
brew install kubectl
brew install mosh
brew install node
brew install sqlite3
brew install tmux
brew install zsh-syntax-highlighting
brew install --cask minikube

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# Remove outdated versions from the cellar.
brew cleanup
