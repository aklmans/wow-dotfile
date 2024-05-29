echo "Installing SKHD: "

echo "Installing Dependencies"

brew install skhd


echo "Setting up SKHD"

mv $HOME/.config/skhd $HOME/.config/skhd.backup
cp -r ../skhd $HOME/.config/skhd

echo "Finished installing SKHD"
skhd --start-service