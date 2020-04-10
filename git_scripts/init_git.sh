#! /bin/bash

echo '==> Starting Initializion'
echo '==> What is the Repository URL= '
read REPOURL

echo '==> git remote add origin '$REPOURL

echo '==> # README" >> README.md'
git init
git add .
git commit -m "first commit"
git remote add origin $REPOURL
git push -u origin master
echo '==> Done'
