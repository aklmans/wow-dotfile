# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
brew install adguard
brew install maczip
brew install alt-tab
brew install keycastr
brew install karabiner-elements
brew install lulu
brew install tencent-lemon
brew install bitwarden
brew install baidunetdisk
brew install ogdesign-eagle
brew install hapigo
brew install netnewswire
brew install KeyCombiner

# Terminal
brew install warp
brew install wezterm

# Browser
brew install google-chrome
brew install firefox
brew install microsoft-edge
brew install orion

# Development
brew install visual-studio-code
brew install postman
brew install docker
brew install wechatwebdevtools
brew info HBuilderX

brew install another-redis-desktop-manager
brew install microsoft-remote-desktop
mas install 1296084683  # Cleaner for Xcode

# Social
brew install wechat
brew install qq
brew install dingtalk
brew install feishu
brew install wechatwork

# Movie
brew install mpv
brew install spotify
brew install neteasemusic

# Screen recording
brew install kap
brew install obs

# Writing
brew install --cask obsidian
brew install typora
brew install wpsoffice-cn
brew install craft
brew install yuque

# Programming Language
## Golang
brew install go
brew install nao1215/tap/gup # Update binaries installed by `go install` command

## Node.js
brew tap oven-sh/bun
brew install node pnpm bun
brew install deno

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
