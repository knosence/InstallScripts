#! /bin/bash

echo '==> Make a Selection'
echo ' '
echo 'Initialize Git Repo...................1'
echo 'Pull Updates For Git Repo.............2'
echo 'Push Changes For Git Repo.............3'
echo 'Update Repo Directory.................4'
echo 'Set Up Repo Directory.................5'
echo ''

read input

case "$input" in
    1) source $HOME/GitRepos/scripts/git_scripts/init_git.sh
        ;;

    2)  echo '==> Starting Pull of Git Repo'
        git pull
        ;;

    3) source $HOME/GitRepos/scripts/git_scripts/push_git.sh
        ;;

    4) source $HOME/GitRepos/scripts/git_scripts/update_repo_directory.sh
        ;;

    5) source $HOME/scripts/git_scripts/setup_repo_directory.sh
        ;;

    *)
        echo 'You Selected the Wrong Selection'
esac
