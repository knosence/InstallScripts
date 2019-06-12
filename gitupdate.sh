#! /bin/bash

GIT_REPOS = `ls -a`

cd
for git_repo in ${GIT_REPOS}
do
    echo ~/GitRepos
    echo updating ${GIT_REPOS} Repo
done

echo All Done
