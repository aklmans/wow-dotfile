echo "Installing Borders: "

echo "Installing Dependencies"

brew install borders


echo "Setting up Borders"

mv $HOME/.config/borders $HOME/.config/borders.backup
cp -r ../borders $HOME/.config/borders

echo "Finished installing Borders"

brew services start borders
