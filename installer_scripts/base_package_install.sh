#! /bin/bash

echo -e 'Installing Needed Packages'
echo -e ' '
echo -e 'Starting With Installing Repos'

echo -e 'Installing RPMFusion'
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo -e 'Installing Nivida Drivers'
sudo dnf install akmod-nvidia

echo -e 'Installing Fedora Workstation Repositores'
sudo dnf install fedora-workstation-repositories-31-1.fc31.noarch -y

echo -e 'Installing Multimedia'
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate sound-and-video


echo -e ''
sudo dnf install screenfetch cura dropbox gstream -y
sudo dnf install texlive-scheme-full
