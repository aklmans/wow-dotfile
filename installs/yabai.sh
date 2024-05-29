echo "Installing Yabai: "

echo "Installing Dependencies"

brew install yabai
brew install jq

echo "Setting up Yabai"

mv $HOME/.config/yabai $HOME/.config/yabai.backup
cp -r ../yabai $HOME/.config/yabai

echo "Finished installing Yabai"

yabai --start-service