echo "Installing Warp: "

echo "Installing Dependencies"

brew install warp
# FantasqueSansM Nerd Font
brew tap homebrew/cask-fonts
brew install --cask font-fantasque-sans-mono-nerd-font

echo "Setting up Warp"

mv $HOME/.warp $HOME/.warp.backup

cp -r ../warp $HOME/.warp

echo "Finished installing Warp"
