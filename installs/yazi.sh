echo "Installing Yazi: "

echo "Installing Dependencies"

brew install yazi ffmpegthumbnailer unar jq mpv poppler fd ripgrep fzf zoxide font-symbols-only-nerd-font

brew install bat  exiftool tree glow imagemagick pandoc sqlite smali miller transmission-cli woff2

echo "Setting up Yazi"

mv $HOME/.config/yazi $HOME/.config/yazi.backup
cp -r ../yazi $HOME/.config/yazi
rm -rf $HOME/.local/state/yazi/packages

# https://github.com/AnirudhG07/awesome-yazi
echo "Installing plugins"
ya pack -a dedukun/relative-motions
ya pack -a dedukun/bookmarks
ya pack -a Reledia/glow
ya pack -a Sonico98/exifaudio
ya pack -a ndtoan96/ouch
# https://github.com/lpnh/fg.yazi
ya pack -a lpnh/fg
ya pack -a Rolv-Apneseth/bypass
ya pack -a Rolv-Apneseth/starship
ya pack -a Reledia/hexyl
ya pack -a kirasok/epub-preview
# https://github.com/Reledia/miller.yazi
ya pack -a Reledia/miller
# https://github.com/yazi-rs/plugins/tree/main
ya pack -a yazi-rs/plugins:max-preview
ya pack -a yazi-rs/plugins:chmod
ya pack -a yazi-rs/plugins:smart-filter

echo "Finished installing Yazi"
