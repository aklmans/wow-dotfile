echo "Installing Yazi: "

echo "Installing Dependencies"

brew install yazi ffmpegthumbnailer unar jq mpv poppler fd ripgrep fzf zoxide font-symbols-only-nerd-font

brew install bat  exiftool tree glow imagemagick pandoc sqlite smali miller transmission-cli woff2

echo "Setting up Yazi"

mv $HOME/.config/yazi $HOME/.config/yazi.backup
cp -r ../yazi $HOME/.config/yazi

echo "Finished installing Yazi"

yazi
