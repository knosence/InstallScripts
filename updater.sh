#! /bin/bash
echo '==> Initializing System Update'

cd

echo '==> Updating Pacman and Aurman'
aurman -Syu

echo '==> updating Rust and Cargo'
rustup update
cargo update

echo '==> Updating Node'
npm update
npm install
npm install -g npm

echo '==> Updating GitRepo Directory'
~/GitRepos/Scripts/repo_directory_update.sh

echo '==> Updating Complete'
