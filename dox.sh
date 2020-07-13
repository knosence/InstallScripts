#!/usr/bin/env bash

#set -o errexit
#set -o pipefail
set -o nounset
#set -o xtrace


section=$1
subsection=$2
#subsubsection=$3

#source $HOME/GitRepos/scripts/second.sh

source update.sh
source install.sh
source git.sh

case $1 in 
  update)
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
    esac;;

  install)
    #Install scripts
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
        echo -e 'Installing packages for Development Enviroment'
        echo -e 'installing Neovim configs'
        bash <(curl -s https://raw.githubusercontent.com/ChristianChiarulli/nvim/master/utils/install.sh)
    esac;;

  git)
    #Git setup and usage
    case $2 in
    
    #dox git / pull
      pull)
        git;;
    #dox git / push
      push)
        pushing;;
    #dox git / status
      status)
        echo -e 'Checking the Status of $0';;
    #dox git / repo / status
      repo-status)
        echo -e 'Checking Status of All Repos';;
    #dox git / repo / setup
      repo-setup)
        echo -e 'Setting up GitRepos File';;
    #dox git / repo / pull
      repo-pull)
        echo -e 'Pulling Down All Repos Updates';;
    #dox git / repo / status
      repo-status)
        echo -e 'Check all Repo status';;
    esac;;

  *)  
  echo -e 'Select either "update", "install", or "git" in all lowercase!'
  
esac

