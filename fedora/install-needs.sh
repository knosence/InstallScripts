#! /bin/bash  

sudo dnf install fedora-workstation-repositores akmod-nvidia google-chrome-stable 

sudo dnf nerd-font vlc tlp htop bleachbit nodejs fish copyq youtube-dl yarn ranger
sudo dnf install gstreamer-plugins-base gstreamer1-plugins-base gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer1-plugins-ugly gstreamer-plugins-good-extras gstreamer1-plugins-good gstreamer1-plugins-good-extras gstreamer1-plugins-bad-freeworld ffmpeg gstreamer-ffmpeg

sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo

sudo dnf swap @gnome-desktop @kde-desktop

curl -sLf https://spacevim.org/install.sh | bash

sudo dnf install neofetch docker

mv ~/Downloads/scripts/ ~/scripts
git clone https://github.com/knosence/scripts

./rust_installer


echo /usr/local/bin/fish >> /etc/shells
echo /usr/local/bin/fish >> /etc/shells

