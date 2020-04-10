#! bin/bash

printf 'Installing SpaceVim\n'
sudo pacman -S neovim 

curl -sLf http://spacevim.org/install.sh | bash

printf 'SpaceVim Install is Complete, Moving on...'
