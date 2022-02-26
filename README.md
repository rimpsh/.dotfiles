# :computer: .dotfiles :computer:

these .dotfiles are here in case i fuck something up or need to install on a new bipidy bopidy boop.

:gem: i mainly run [Ubuntu](https://ubuntu.com/) with i3wm. :gem:

## Setup
the following describes what you have to do after a fresh install
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
### Packages
```
stow
rofi
alacritty
polybar
kitty
betterlockscreen
neovim
zathura
zathura-pdf-mupdf
xsel
flameshot
go
gopls
yubioath-desktop
networkmanager-vpnc
protobuf
fish
starship
nerd-fonts-jetbrains-mono
ripgrep
mpv
htop
tmux
```
### Placeholder

## Links
- [vim-plug](https://github.com/junegunn/vim-plug)
- [fisher](https://github.com/jorgebucaran/fisher)
- [nvm-fish](https://github.com/jorgebucaran/nvm.fish)
- [spotify-theme](https://github.com/morpheusthewhite/spicetify-themes/tree/master/Sleek)

This dotfile setup (and especially the [nvim](https://github.com/neovim/neovim) part) is heavily inspired by: [ThePrimeagen](https://github.com/ThePrimeagen/.dotfiles)
