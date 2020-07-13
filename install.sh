
#!/usr/bin/env bash

  #dox install / GitRepos
  function gitrepos(){
    bash <(curl -s https://raw.githubusercontent.com/knosence/scripts/git_scripts/setup_repo_directory.sh)
  }

  #dox install / dox
  function dox(){
    git status
  } 
  
  #dox install / fresh
  function fresh(){
    git status 
  }
  #dox install / server
  function server(){
    git status
  }
  #dox install / dev-env 
  function dev(){
    git status
  }

