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
dunst
nm-connection-editor
pavucontrol
network-manager-applet
arandr
autorandr
fwupd
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
element-desktop
man-db
man-pages
# add to docker group
# start/enable service
docker
docker-compose
containerlab-bin
nvim-packer-git
spotify
mpv
rustup
rust-analyzer
ttf-dejavu
nerd-fonts-jetbrains-mono
noto-fonts
udisks2
udiskie
avahi
nss-mdns
cups
cups-pdf
gvfs
gvfs-smb
sshfs
zip
xarchiver
thunar
thunar-archive-plugin
aerc
wireguard-tools
# systemctl enable systemd-resolved.service
systemd-resolvconf
protonvpn-cli

# these need yay or something other
neovim-nightly-bin
brave-bin
```

### Placeholder
`xrandr --output eDP --set TearFree on`

## Links
- [vim-plug](https://github.com/junegunn/vim-plug)
- [fisher](https://github.com/jorgebucaran/fisher)
- [nvm-fish](https://github.com/jorgebucaran/nvm.fish)
- [spotify-theme](https://github.com/morpheusthewhite/spicetify-themes/tree/master/Sleek)

This dotfile setup (and especially the [nvim](https://github.com/neovim/neovim) part) is heavily inspired by: [ThePrimeagen](https://github.com/ThePrimeagen/.dotfiles)
