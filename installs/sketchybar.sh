echo "Installing Weztem: "

echo "Installing Dependencies"
# Packages
brew install lua
brew install switchaudio-osx
brew install nowplaying-cli
brew install jq
brew install gh
brew tap FelixKratz/formulae
brew install sketchybar

# Fonts
brew install --cask sf-symbols
brew install --cask homebrew/cask-fonts/font-sf-mono
brew install --cask homebrew/cask-fonts/font-sf-pro

curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v2.0.5/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

# SbarLua
(git clone https://github.com/FelixKratz/SbarLua.git /tmp/SbarLua && cd /tmp/SbarLua/ && make install && rm -rf /tmp/SbarLua/)

echo "Setting up Wezterm"

mv $HOME/.config/sketchybar $HOME/.config/sketchybar.backup
cp -r ../sketchybar $HOME/.config/sketchybar

echo "Starting Sketchybar"

brew services restart sketchybar

echo "Finished setting up"