#! /bin/bash

cd

if [ ! "$.config" =~ ^\. ]
then
	mkdir .config	
fi
cd .config
cp ~/GitRepos/NeovimDotFile /nvim
