#!/bin/bash

# RPI3-GAPS INSTALLATION SCRIPT
echo "......................................"
echo ".rpi3-gaps  |  beginning installation."
echo "...........script by eason............"
echo "......................................"
echo "......................................"
echo "..................UPDATING YOUR DEVICE"
echo "......................................"
sudo apt-get update && sudo apt-get upgrade -y && cd ~/
echo "......................................"
echo "......................................"
echo ".........INSTALLING NECESSARY PACKAGES"
echo "......................................"
sudo apt-get install raspberrypi-kernel-headers bc git libncurses5-dev -y
echo "......................................"
echo "......................................"
sudo apt-get install libparted-dev bsdtar lrzip autotools-dev dh-make autoconf-archive cmake -y
echo "......................................"
echo "......................................"
sudo apt-get install alsa-tools alsa-utils libasound2-dev libpulse-dev -y
echo "......................................"
echo "......................................"
sudo apt-get install zsh neofetch nmap bridge-utils -y
echo "......................................"
echo "......................................"
sudo apt-get install --no-install-recommends xserver-xorg -y
echo "......................................"
echo "......................................"
sudo apt-get install --no-install-recommends lightdm -y
echo "......................................"
echo "......................................"
sudo apt-get install i3 gvfs -y
echo "......................................"
echo "......................................"
sudo apt-get install libxkbcommon-dev libxkbfile-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm-dev xutils-dev xfsprogs -y
echo "......................................"
echo "......................................"
sudo apt-get install --no-install-recommends lxappearance arc-theme fonts-noto fonts-noto-mono fonts-roboto xfce4-terminal xfce4-notifyd libnotify-bin -y
echo "......................................"
echo "......................................"
sudo apt-get install --no-install-recommends thunar tumbler thunar-archive-plugin thunar-volman thunar-media-tags-plugin -y
echo "......................................"
echo "......................................"
sudo apt-get install lxpanel compton compton-conf feh nitrogen volumeicon-alsa -y
echo "......................................"
echo "......................................"
sudo apt-get install numix-icon-theme vlc qpdfview gpicview xarchiver chromium-browser gparted -y
echo "......................................"
echo "......................................"
sudo apt-get purge notification-daemon dunst i3status rxvt-unicode -y && sudo apt autoremove -y
echo "......................................"
echo "......................................"
sudo apt-get install ranger leafpad galculator gnome-screenshot gnome-dictionary blueman -y
echo "......................................"
echo "......................................"
echo "........ building [xcb-util-xrm] ....."
echo "............... and [i3-gaps] ........"
echo "......................................"
cd /tmp && git clone https://github.com/Airblader/xcb-util-xrm && cd xcb-util-xrm && git submodule update --init && ./autogen.sh --prefix=/usr && make && sudo make install
echo "......................................"
echo "......................................"
cd /tmp && git clone https://www.github.com/Airblader/i3 i3-gaps && cd i3-gaps && autoreconf --force --install && rm -rf build/ && mkdir -p build && cd build/ && ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers && make && sudo make install
echo "......................................"
echo "......................................"
echo "............... installing [gotop] ..."
echo "......................................"
cd /tmp && git clone https://github.com/cjbassi/gotop && cd gotop/scripts && ./download.sh && sudo mv gotop /usr/local/bin/
echo "......................................"
echo "......................................"
echo "......................................"
echo "......................................"
cp agentOS/* ~/
echo "......................................"
echo "......................................"
echo "......................................"
echo "......................................"
