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
	'knosence/InstallScripts'
)



directory="GitRepos"

cd
if [ ! -d "$directory" ]; then
    echo "==> GitRepos Directory does not exist"
    echo "==> Making Directory"
    mkdir GitRepos
    
    cd GitRepos

    for repo in "${git_repos[@]}"
    do
        echo "==> Pulling down $repo"
        git clone http://github.com/"$repo"

        echo "==> Done with $repo"
    done
fi


