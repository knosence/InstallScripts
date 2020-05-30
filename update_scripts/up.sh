#! /bin/bash
echo '==> Initializing System wide Update'

cd

echo 'Starting With Systems Update'
yay

echo -e 'Now Updating Doom'
~/.emacs.d/bin/doom update
~/.emacs.d/bin/doom upgrade -f

echo '==> updating Rust and Cargo'
rustup update

echo '==> Updating Node'
sudo npm install -g npm

echo '==> Updating GitRepo Directory'
source $HOME/GitRepos/scripts/git_scripts/update_repo_directory.sh

echo '==> Updating nvim'
cd ~/.config/nvim
git pull

echo '==> Updating Complete'
