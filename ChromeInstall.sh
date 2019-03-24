#!/bin/bash

echo '*************************Starting Chrome Install*************************'

zypper ar http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome

echo '*************************Downloading and importing Linux signing key*************************'
wget https://dl.google.com/linux/linux_signing_key.pub
rpm --import linux_signing_key.pub
echo '*************************Removing Linux signing key*************************'
rm linux_signing_key.pub

echo '*************************Installing Chrome*************************'
zypper ref
zypper in google-chrome-stable

echo '*************************Done*************************'

./NeededInstall.sh
