# configuring a base linux install
this is list of commands to be run after a new linux installation
currently below commands have been run on a debian 11 (testing)
with dwm as a DE/WM
some commands might be incomplete. In that case refer the URL
which is mentioned in the comments.

---

# WINDOW MANAGER
## dwm
#### http://forums.debian.net/viewtopic.php?f=16&t=65110
not done exactly as per above link, but somewhat similar

---

# BLUETOOTH
## connect bluetooth devices
#### Using bluetoothctl
#### https://wiki.debian.org/BluetoothUser
Start the bluetoothctl interactive command. Enter "help" to get a list of available commands.

Turn the power to the controller on by entering **"power on"**. It is off by default.
Enter **"devices"** to get the MAC Address of the device with which to pair.
Enter device discovery mode with **"scan on"** command if device is not yet on the list.
Turn the agent on with **"agent on"**.
Enter "**pair MAC Address"** to do the pairing (tab completion works).

If using a device without a PIN, one may need to manually trust the device before it can reconnect successfully. Enter "trust MAC Address" to do so.

Finally, use **"connect MAC address"** to establish a connection.

## enable bluetooth at login screen
#### https://forum.xfce.org/viewtopic.php?id=12419
cd /etc/udev
sudo vim rules.d/10-local.rules
#### add below line to this file
ACTION=="add", KERNEL=="hci0", RUN+="/usr/bin/hciconfig hci0 up"

---

# SHELL
## zsh syntax highlighting
#### clone repo
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
#### source it from the end of .zshrc (if no being done already)
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

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

