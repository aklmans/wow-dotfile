echo "Installing Zellij: "

echo "Installing Dependencies"

brew install zellij

echo "Setting up Zellij"

mv $HOME/.config/zellij $HOME/.config/zellij.backup
cp -r ../zellij $HOME/.config/zellij

echo 'eval "$(zellij setup --generate-auto-start zsh)"' >> ~/.zshrc

echo "Finished installing Zellij"
