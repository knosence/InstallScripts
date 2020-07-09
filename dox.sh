#!/usr/bin/env bash

#set -o errexit
#set -o pipefail
set -o nounset
set -o xtrace


section=$1
subsection=$2
#subsubsection=$3

#source $HOME/GitRepos/scripts/second.sh

source update.sh
source install.sh
source git.sh
if [$1 -eq 'update']
  #Updates (dox update)
  case $2 in
  #dox update full
  full) 
    echo -e 'updating Entire System';;
  #dox update repos
  repos)
    echo -e 'Updating Repos';;
  #dox update pkgs
  pkgs)
    echo -e 'Update PKGs';;
  #dox update emacs
  emacs)
    echo -e 'Updating Emacs-Doom';;
  #dox update neovim
  Neovim)
    echo -r 'Updating Neovim';;
  *)
    echo -e 'Not an Upgrade Selection';;
  esac
elif [$2 -eq 'install']
  #Install scripts
  #dox install / GitRepos
  case $2 in
  #dox install / dox
    dox)
      echo -e 'Installing Dox';;
  #dox install / fresh
    fresh)
      echo -e 'Installing packages for Fresh Install';;
  #dox install / server
    server)
      echo -e 'Installing packages for server'
  #dox install / dev-env 

  #Git setup and usage
  #dox git / pull
  #dox git / push
  #dox git / status
  #dox git / repo / status
  #dox git / repo / setup
  #dox git / repo / pull
  #dox git / repo / status



