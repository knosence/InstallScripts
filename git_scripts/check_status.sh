#! /bin/bash


cd ~/GitRepos

GIT_REPOS="$( bash <<EOF
ls
EOF
)"

for git_repo in ${GIT_REPOS}
do
    cd ${git_repo}
    echo ==\> checking status for ++ ${git_repo} ++ Repo
    git status
    cd ..
done

echo '==> checking status Neovim config files'
cd ~/.config/nvim
git status

echo '==> Done'
