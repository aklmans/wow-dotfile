echo "Installing MPV: "

echo "Installing Dependencies"

brew install --cask mpv

echo "Setting up MPV"

mv $HOME/.config/mpv $HOME/.config/mpv.backup
cp -r ../mpv $HOME/.config/mpv

echo "Finished installing MPV"
