#!/bin/sh
sudo nmcli d wifi connect "SSID" password "PASSWORD" ifname wlan0
# sudo apt-get -y update
# sudo apt-get -y dist-upgrade

sudo wget -O/etc/init.d/axp209-nolim http://fordsfords.github.io/axp209-nolim/axp209-nolim
sudo chmod +x /etc/init.d/axp209-nolim
sudo update-rc.d axp209-nolim defaults
sudo shutdown -r now


# after reboot:
sudo i2cget -f -y 0 0x34 0x30 # this should return 0x63
sudo curl -sL https://deb.nodesource.com/setup_7.x | sudo bash -
sudo apt-get install -y nodejs git build-essential tmux htop
git clone https://github.com/sdaitzman/chip-io-test.git
echo '# So I can click the things!!
set-option -g mouse-select-pane on
set-option -g mouse-select-window on
set-option -g mouse-resize-pane on

# Scroll your way into copy mode (scrollback buffer)
# and select text for copying with the mouse
setw -g mode-mouse on' > ~/.tmux.conf
