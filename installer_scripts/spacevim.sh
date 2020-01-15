#! bin/bash

printf 'Installing SpaceVim\n'
pkg install neovim -y

curl -sLf http://spacevim.org/install.sh | bash

printf 'SpaceVim Install is Complete, Moving on...'
