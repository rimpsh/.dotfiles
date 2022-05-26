# :computer: .dotfiles :computer:

these .dotfiles are here in case i fuck something up or need to install on a new bipidy bopidy boop.

:gem: i do use arch now btw :) :gem:

## Setup
the following describes what you have to do after a fresh install
this will be moved into an install script
### Preparations
```bash
# make fish default shell
chsh -s /usr/bin/fish
# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# create nvm folder
mkdir -p $HOME/.local/share/nvm/
# install dotfiles (if stow throws errors delete the already existing folders)
./install
```

```bash
# create cached image for betterlocksreen
betterlockscreen -u ~/Pictures/Wallpapers/Wallpaper6.jpeg
```

### Packages
This will be turned into a little script
```
# install yay!
# make sure to add yourself to the video group
light
nm-connection-editor
pavucontrol
network-manager-applet
arandr
autorandr
go
gopls
delve
xclip
ripgrep
kitty
stow
bluez
bluez-utils
blueman
neofetch
code
rofi
starship
fish
tlp
tlpui
feh
betterlockscreen

# these need yay or something other
neovim-nightly-bin
```

### Placeholder

## Links
- [vim-plug](https://github.com/junegunn/vim-plug)
- [fisher](https://github.com/jorgebucaran/fisher)
- [nvm-fish](https://github.com/jorgebucaran/nvm.fish)
- [spotify-theme](https://github.com/morpheusthewhite/spicetify-themes/tree/master/Sleek)

This dotfile setup (and especially the [nvim](https://github.com/neovim/neovim) part) is heavily inspired by: [ThePrimeagen](https://github.com/ThePrimeagen/.dotfiles)
