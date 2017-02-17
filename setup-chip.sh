#!/bin/sh
sudo nmcli d wifi connect "SSID" password "PASSWORD" ifname wlan0
# sudo apt-get -y update
# sudo apt-get -y dist-upgrade
sudo curl -sL https://deb.nodesource.com/setup_7.x | sudo bash -
sudo apt-get install -y nodejs git build-essential tmux htop
git clone https://github.com/sdaitzman/chip-io-test.git
sudo wget -O/etc/init.d/axp209-nolim http://fordsfords.github.io/axp209-nolim/axp209-nolim
sudo chmod +x /etc/init.d/axp209-nolim
sudo update-rc.d axp209-nolim defaults
sudo shutdown -r now
