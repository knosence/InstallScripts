#! /bin/bash

echo esy run
cd ~/GitRepos/oni2
~/.yarn/bin/esy install
~/.yarn/bin/esy bootstrap 
~/.yarn/bin/esy build

cd src/textmate_service
node install.js
npm run build

~/.yarn/bin/esy run
