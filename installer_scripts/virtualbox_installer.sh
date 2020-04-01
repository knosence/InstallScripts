#!/usr/bin/env bash

echo -e 'Installing Dependencies'

sudo dnf -y install @development-tools
sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras

echo -e 'Installing VirtualBox RPM Repos'

cat <<EOF | sudo tee /etc/yum.repos.d/virtualbox.repo
[virtualbox]
name=Fedora $releasever - $basearch - VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/29/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/downlaod/oracle_vbox.asc
EOF

echo -e 'Importing Virtualbox GPG keys'
sudo dnf search virtualbox -y

echo -e 'Installing Virtualbox 6'
sudo dnf install VirtualBox

echo -e 'Adding your user to the Vboxusers Group'
sudo usermod -a -G vboxusers kSep

newgrp vboxusers
id $USER

sudo dnf install akmod-VirtualBox kernel-devel-$(uname -r)
sudo kmods; systemctl restart systemd-modules-load.service
