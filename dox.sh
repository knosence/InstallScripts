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

if [$1 == "update"];
then
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
elif [$1 == "install"];
then
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
      echo -e 'Installing packages for server';;
  #dox install / dev-env 
    dev) 
      echo -e 'Installing Developer Enviroment';;

  esac
elif [$1 == "git"];
then 
 #Git setup and usage
  #dox git / pull
  case $2 in
    dev) 
      echo -e 'Installing Developer Enviroment';;
  #dox git / push
    dev) 
      echo -e 'Installing Developer Enviroment';;
  #dox git / status
    dev) 
      echo -e 'Installing Developer Enviroment';;
  #dox git / repo / status
    dev) 
      echo -e 'Installing Developer Enviroment';;
  #dox git / repo / setup
    dev) 
      echo -e 'Installing Developer Enviroment';;
  #dox git / repo / pull
    dev) 
      echo -e 'Installing Developer Enviroment';;
  #dox git / repo / status
    dev) 
      echo -e 'Installing Developer Enviroment';;
  esac
else 
  echo -e "Not a valid selection.\n [update], [install], or [git]"
fi


