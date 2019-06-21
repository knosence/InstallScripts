#! /bin/bash


cd ~/GitRepos

GIT_REPOS="$( bash <<EOF
ls
EOF
)"

for git_repo in ${GIT_REPOS}
do
    cd ${git_repo}
    echo '==> updating ++${git_repo}++ Repo'
    git pull
    cd ..
done

echo '==> updating Neovim config files'
cd ~/.config/nvim
git pull

echo '==> Done'
