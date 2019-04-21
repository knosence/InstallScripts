#!/bin/bash

echo '************************Starting CS Code Install************************'

rpm --import https://packages.microsoft.com/keys/microsoft.asc

sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/zypp/repos.d/vscode.repo'

echo '************************Installing CS Code********************************'
zypper refresh
zypper install code

echo '*************************Done**************************'


