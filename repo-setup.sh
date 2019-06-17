#! /bin/bash

git_repos=(
	'neovim/neovim'
	'knosence/NeovimDotFile'
	'onivim/oni2'
	'redox-os/redox.git'
	'servo/servo'
	'jwilm/alacritty'
	'rust/rust_sandbox'
	'knosence/LearningRust'
	'rust-lang/rust'
	'xi-editor/xi7editor'
	'knosence/InstallScripts'
)

for repo in "${git_repos[@]}"
do
	echo ==\> Pulling down $repo
	git clone http://github.com/"$repo"

	echo ==\> Down with $repo
done
