#!/usr/bin/env bash

  #dox git / pull
  function pull(){
    git pull
  }
  #dox git / push
  read COMMIT

  function push(){
   git add . 
   git commit -m "$COMMIT"
  
   git push origin master
  }
  #dox git / status
  function status(){
    git status
  }
  #dox git / repo / status
  function status(){
    git status
  }
  #dox git / repo / setup
  function status(){
    git status
  }
  #dox git / repo / pull
  function status(){
    git status
  }
  #dox git / repo / status
  function status(){
    git status
  }
