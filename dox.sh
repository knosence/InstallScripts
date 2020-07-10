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
  
elif [$1 -eq 'install']
  #Install scripts
  case $2 in
  #dox install / GitRepos
    gitrepos)
      echo -e 'Installing gitrepos';;
  #dox install / dox
    dox)
      echo -e 'Installing Dox';;
  #dox install / fresh
    fresh)
      echo -e 'Installing packages for Fresh Install';;
  #dox install / server
    server)
      echo -e 'Installing packages for Server';;
  #dox install / dev-env 
    dev)
      echo -e 'Installing packages for Development Enviroment'
      echo -e 'installing Neovim configs'
      bash <(curl -s https://raw.githubusercontent.com/ChristianChiarulli/nvim/master/utils/install.sh)
      ;; 


esac
  #Git setup and usage
elif [$1 -eq 'git']
  case $2 in
  
  #dox git / pull
    git-pull)
      echo -e 'Pulling ';;
  #dox git / push
    dox)
      echo -e 'Installing Dox';;
  #dox git / status
    dox)
      echo -e 'Installing Dox';;
  #dox git / repo / status
    dox)
      echo -e 'Installing Dox';;
  #dox git / repo / setup
    dox)
      echo -e 'Installing Dox';;
  #dox git / repo / pull
    dox)
      echo -e 'Installing Dox';;
  #dox git / repo / status
    dox)
      echo -e 'Installing Dox';;
else
  echo -e 'Select either "update", "install", or "git" in all lowercase!'
  
fi


