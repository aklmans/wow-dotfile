/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Zsh
brew install zsh
echo /opt/homebrew/bin/zsh | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/zsh

# Base
brew install mas
brew install cmake less gnu-sed wget curl

# CLI
brew install exa bat zoxide fd fzf ripgrep dust tldr tig btop tree tmux oh-my-posh hyperfine dooit lazygit oh-my-zsh
brew install neovim
brew install yabai borders sketchybar skhd switchaudio-osx ifstat gh
## Network
brew install nali aria2 dog httpie nmap telnet
## Archive
brew install unar sevenzip brotli upx rar
## Graphic
brew install ffmpeg graphviz exiftool ffmpegthumbnailer
## JSON
brew install jless jq jc
## Writing
brew install hugo


# Utility
brew install --cask adguard
brew install --cask bettermouse
brew install --cask maczip
brew install --cask alt-tab
brew install --cask keycastr
brew install --cask karabiner-elements
brew install --cask lulu
brew install --cask tencent-lemon


# Terminal
brew install --cask kitty
brew install --cask warp
brew install --cask wezterm

# Browser
brew tap homebrew/cask-versions
brew install --cask google-chrome
brew install --cask firefox
brew install --cask microsoft-edge
brew install --cask orion

# Filesync
brew install --cask transmit

# Development
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask dash
brew install --cask docker

brew install --cask imhex
brew install --cask wireshark
brew install --cask proxyman
brew install --cask another-redis-desktop-manager
brew install --cask microsoft-remote-desktop
mas install 1296084683  # Cleaner for Xcode


# Database
brew install --cask sequel-ace

# Social
brew install --cask wechat
brew install --cask lark
brew install --cask qq
brew install --cask dingtalk
brew install --cask feishu

# Movie
brew install --cask mpv
brew install --cask spotify

# Screen recording
brew install --cask kap
brew install --cask obs

# Writing
brew install --cask obsidian

# Programming Language
## Golang
brew install go

## Node.js
brew tap oven-sh/bun
brew install node pnpm bun

## Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

## Python
brew install python

## Lua
brew install lua luarocks

## PHP
brew install php composer
composer g require psy/psysh

# Fonts
brew tap homebrew/cask-fonts  # You only need to do this once!
brew install --cask font-sf-mono
brew install --cask font-fira-code
brew install --cask font-roboto-mono
brew install --cask font-dejavu-sans-mono
brew install --cask sf-symbols
brew install --cask font-symbols-only-nerd-font
brew install --cask font-caskaydia-cove-nerd-fon
brew install --cask font-codicon
brew install --cask font-fantasque-sans-mono-nerd-font
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-maple
brew install --cask font-meslo-lg-nerd-font
brew install --cask font-hack-nerd-font
