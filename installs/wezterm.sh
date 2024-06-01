echo "Installing Weztem: "

echo "Installing Dependencies"

brew install wezterm
# FantasqueSansM Nerd Font
brew tap homebrew/cask-fonts
brew install --cask font-fantasque-sans-mono-nerd-font
# CaskaydiaCove Nerd Font Propo
brew install --cask font-caskaydia-cove-nerd-font
# JetBrainsMonoNL Nerd Font Monoo
brew install --cask font-jetbrains-mono-nerd-font
# Maple Mono
brew install --cask font-maple-mono
# Hack Nerd Font
brew install --cask font-hack-nerd-font

echo "Setting up Wezterm"

mv $HOME/.config/wezterm $HOME/.config/wezterm.backup
mv $HOME/.wezterm.lua $HOME/.wezterm.lua.backup

cp -r ../wezterm $HOME/.config/wezterm

echo "Finished installing Weztem"
