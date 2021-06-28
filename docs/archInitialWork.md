### X window system group (server and tools)
`sudo pacman -S xorg`

### X window xinit (for startx)
`sudo pacman -S xorg-xinit`

---
### suckless tools
#### dwm
`mkdir dwm; cd dwm`

`git clone https://github.com/sanketgarade/dwm.git .`

`sudo make clean install`
#### st
`mkdir st; cd st`

`git clone https://github.com/sanketgarade/st.git .`

`sudo make clean install`
#### dmenu
`sudo pacman -S dmenu`

---
### brave browser
### [how to install from AUR](https://medium.com/@danielmc/installing-brave-on-arch-linux-4ece7563678e)
`git clone https://aur.archlinux.org/brave-bin.git` 

`makepkg -si`

---
### backlight control
`sudo pacman -S acpilight`

set absolute brightness or inc/dec

`sudo xbacklight -set 20`

---
### fonts
#### almost all fonts including Asian ones
`sudo pacman -S noto-fonts noto-fonts-cjk`

#### Indic Devanagari fonts
`sudo pacman -S ttf-devanagarifonts`

---
### SSH tools
`sudo pacman -S openssh`

---
### misc
CLI copy

`sudo pacman -S xclip`

vim clipboard copy

`sudo pacman -S gvim`

---
### enable and start NetworkManager service
[this auto starts the service on boot](https://wiki.archlinux.org/title/Systemd#Using_units)

`sudo systemctl enable NetworkManager.service`

`sudo systemctl start NetworkManager.service`

---
### sound/audio control
`sudo pacman -S alsa-utils`

---
### video player
`sudo pacman -S mpv`

---
### email
#### mutt wizard
[link](https://github.com/LukeSmithxyz/mutt-wizard)

```
sudo pacman -S neomutt curl isync msmtp pass --needed
git clone https://github.com/LukeSmithxyz/mutt-wizard
cd mutt-wizard
sudo make install
```
sudo pacman -S dosfstools
pc -S python-pip
git clone https://aur.archlinux.org/play-with-mpv-git.git
cp {/usr,~/.local}/share/applications/thann.play-with-mpv.desktop ~/.config/autostart
