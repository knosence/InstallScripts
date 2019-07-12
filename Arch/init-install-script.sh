#! /bin/bash

echo ==\> Updating and installing needed packages 
pacman -Syu 
pacman -S aurman ranger neovim tilix Google-Chrome-Stable ffmpeg nodejs words slack discord vscode screenfetch aspell-en libmythes mythes-en languagetool 



echo
echo
echo ==\> Installing Rust, Cargo and Rustup

fish
alias install="aurman -S"
alias search="aurman -Ss"
alias remove="aurman -R"
funcsave install
funcsave search
funcsave remove

echo
echo
echo ==\> Installing Rust, Cargo and Rustup

curl https://sh.rustup.rs -sSf | sh

echo
echo
echo ==\> Installing Redox

curl -sf https://gitlab.redox-os.org/redox-os/redox/raw/master/bootstrap.sh -o bootstrap.sh && bash -e bootstrap.sh

echo
echo
echo ==\> Installing SpaceVim

curl -slf https://spacevim.org/install.sh | bash

echo ==\> Hopefully Everything is Installed and ready
