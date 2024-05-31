echo "Installing Oh My Posh: "

echo "Installing Dependencies"

brew install oh-my-posh

echo "Setting up Oh My Posh"

mv $HOME/.config/oh-my-posh $HOME/.config/oh-my-posh.backup
cp -r ../oh-my-posh $HOME/.config/oh-my-posh

echo 'eval "$(oh-my-posh --init --shell zsh --config ~/.config/oh-my-posh/material.omp.json)"' >> ~/.zshrc

echo "Finished installing Oh My Posh"
