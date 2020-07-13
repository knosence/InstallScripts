#!/usr/bin/env bash

  #dox git / pull
  function pulling(){
    echo -e "pulling down $0"
  }
  #dox git / push

  function pushing(){
    read COMMIT
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
