#! /bin/bash

git_repos=(
'neovim/neovim'
'knosence/NeovimDotFile'
'onivim/oni2'
'redox-os/redox.git'
'servo/servo'
'jwilm/alacritty'
'bradtraversy/rust_sandbox'
'knosence/LearningRust'
'rust-lang/rust'
'xi-editor/xi-editor'
'knosence/scripts'
'SpaceVim/SpaceVim'
'knosence/HtmlCssExercise'
'knosence/ResumeSite'
'knosence/Frontend-Dev'
'knosence/rust-cheatsheet'

)



directory="GitRepos"

cd
if [ ! -d "$directory" ]; then
    echo "==> GitRepos Directory does not exist"
    echo "==> Making Directory"
    mkdir GitRepos
    
fi

cd GitRepos

for repo in "${git_repos[@]}"
do
    echo "==> Pulling down $repo"
    git clone http://github.com/"$repo"

    echo "==> Done with $repo"
done

cd
rm -Rf scripts
