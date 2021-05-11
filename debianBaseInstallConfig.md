---
# DISPLAY
#### turn off (in-built) display LVDS-1
#### https://dwm.suckless.org/multi-monitor/
xrandr --output LVDS-1 --off

---

# LANGUAGE
#### Install Indian and asian fonts
#### https://en.wikipedia.org/wiki/Help%3AMultilingual_support_%28East_Asian%29#Check_for_existing_support
sudo apt install fonts-indic
sudo apt-get install fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core

---

# SOUND
#### Install ALSA utilities
sudo apt install alsa-utils
run ```alsamixer``` to open sound mixer in terminal
