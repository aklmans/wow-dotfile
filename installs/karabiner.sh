echo "Installing Karabiner-Elements: "

echo "Installing Dependencies"

brew karabiner-elements

echo "Setting up Karabiner-Elements"

mv $HOME/.config/karabiner $HOME/.config/karabiner.backup
cp -r ../karabiner $HOME/.config/karabiner

echo "Finished installing Karabiner-Elements"
