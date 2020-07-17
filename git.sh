#!/usr/bin/env bash

  #dox git / pull
  function pulling(){
    echo -e "Pulling Down repo "+${PWD##*/}
    git pull origin master
  }
  #dox git / push

  function pushing(){
    echo -e "Enter the commits for this commit:\n"
    read COMMIT
    git add . 
    git commit -m "$COMMIT"
    git push origin master
    echo -e "Pushing up "${PWD##*/} " to Github\n"
  }
  #dox git / status
  function status(){
    echo -e "The status of ${PWD##*/} is:"
    git status
  }
  #dox git / repo / setup
  function repo-setup(){
    git status
  }
  #dox git / repo / pull
  function repo-pull(){
    cd ~/GitRepos

    GIT_REPOS="$( 
    bash <<-EOF
      ls 
EOF
    )"

    for git_repo in ${GIT_REPOS}
    do
        cd ${git_repo}
        echo ==\> updating ++ ${git_repo} ++ Repo
        git pull
        cd ..
    done

    echo '==> updating Neovim config files'
    cd ~/.config/nvim
    git pull

    echo '==> Done'
  }
  #dox git / repo / status
  function repo-status(){
    git status
  }
