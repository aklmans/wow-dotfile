echo "Installing Yazi: "

echo "Installing Dependencies"

brew install yazi ffmpegthumbnailer unar jq mpv poppler fd ripgrep fzf zoxide font-symbols-only-nerd-font

brew install bat  exiftool tree glow imagemagick pandoc sqlite smali miller transmission-cli woff2 rich

echo "Setting up Yazi"

mv $HOME/.local/state/yazi $HOME/.local/state/yazi.backup
mv $HOME/.config/yazi $HOME/.config/yazi.backup
cp -r ../yazi $HOME/.config/yazi


# https://github.com/AnirudhG07/awesome-yazi
echo "Installing plugins"
# https://github.com/AnirudhG07/rich-preview.yazi
ya pack -a AnirudhG07/rich-preview
ya pack -a dedukun/relative-motions
ya pack -a dedukun/bookmarks
ya pack -a Reledia/glow
ya pack -a Sonico98/exifaudio
ya pack -a ndtoan96/ouch
# https://github.com/lpnh/fg.yazi
ya pack -a lpnh/fg
ya pack -a Rolv-Apneseth/bypass
ya pack -a Reledia/hexyl
ya pack -a kirasok/epub-preview
# https://github.com/yazi-rs/plugins/tree/main
ya pack -a yazi-rs/plugins:max-preview
ya pack -a yazi-rs/plugins:chmod
ya pack -a yazi-rs/plugins:smart-filter
ya pack -a yazi-rs/plugins:full-border

git clone https://github.com/Urie96/preview.yazi.git ~/.config/yazi/plugins/preview.yazi

# echo "updating plugins"
# ya pack -u

echo "Finished installing Yazi"
