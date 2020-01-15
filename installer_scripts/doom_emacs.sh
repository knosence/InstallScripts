#! /bin/bash

echo 'Installing Doom-Emacs'

echo 'Starting with Emacs'

sudo dnf install emacs -y

echo 'Now the Magic behind Emacs... Doom'

git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
cd
~/.emacs.d/bin/doom install

echo 'Doom-Emacs Install is complete, Moving on...'
