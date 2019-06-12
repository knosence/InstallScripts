#! /bin/bash


cd ~/GitRepos

GIT_REPOS="$( bash <<EOF
ls
EOF
)"

for git_repo in ${GIT_REPOS}
do
    echo ============== updating ${git_repo} Repo ================
    git pull orgin master
done

echo =====================All Done===================
