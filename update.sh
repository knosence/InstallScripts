#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
set -o xtrace

#Install Script

#Updates (dox update)
#dox update full
#dox update repos
#dox update pkgs
#dox update doom
#dox update neovim
#dox update rust

#function full() {
 # repos()
#  #pkgs()
 # emacs()
  #neovim()
#  rust()
#}

function repos() {
  cd ~/GitRepos

  GIT_REPOS="$( bash EOF 
  ls 
  EOF )"

  for git_repo in ${GIT_REPOS}
  do
      cd ${git_repo}
      echo -e '==\> updating >> ${git_repo} << Repo'
      git pull
      cd ..
  done

  echo '==> Done'
}

function pkgs() {
  echo -e '\n>>> Updating Packages\n'

  sudo pacman -Syyu --noconfirm
  yay
  
  echo -e '>>> Done\n'
}

function emacs() {
  ~/.emacs.d/bin/doom update
  ~/.emacs.d/bin/doom upgrade
}

function neovim() {
  echo -e '\n>>> updating Neovim config files\n'
  cd ~/.config/nvim
  git pull
  echo -e '>>> Done\n'
}

function rust() {
  rustup update
}
