#!/usr/bin/env bash

  #dox git / pull
  function pulling(){
    echo -e "Pulling Down repo ${PWD##*/}"
    git pull
  }
  #dox git / push

  function pushing(){
    echo -e "Enter the commits for this commit:\n"
    read COMMIT
    git add . 
    git commit -m "$COMMIT"
    git push origin master
    echo -e "Pushing up ${PWD##*/} to Github\n"
  }
  #dox git / status
  function status(){
    echo -e 'The status of ${PWD##*/} is:'
    git status
  }
  #dox git / repo / setup
  function repo-setup(){
    git status
  }
  #dox git / repo / pull
  function repo-pull(){
    cd ~/GitRepos

    repos="$( bash <EOF 
    ls 
    EOF
    )"
  
    for repo in ${repos} 
    do
      echo ${repo}
      echo -e " >>> Now Upgrading the ${repo} Repo"
      git pull
      echo -e " >>> Finished"
      cd ..
    done

  }
  #dox git / repo / status
  function repo-status(){
    git status
  }
