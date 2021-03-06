#! /bin/bash


echo -e '||================||'
echo -e '||    Git Menu    ||'
echo -e '||================||'
echo -e 'What would you like to do?'
echo -e ' '
echo -e 'Initialize Git Repo...................1'
echo -e 'Pull Updates For Git Repo.............2'
echo -e 'Push Changes For Git Repo.............3'
echo -e 'Update Repo Directory.................4'
echo -e 'Set Up Repo Directory.................5'
echo -e ''
echo -e 'Return to Main Screen.................0'
echo -e ''

read input

case "$input" in

    0)  clear
        source $HOME/GitRepos/scripts/main.sh
       ;;

    1)  clear
        source $HOME/GitRepos/scripts/git_scripts/init_git.sh
        ;;

    2)  clear
        echo '==> Starting Pull of Git Repo'
        git pull
        ;;

    3)  clear
        source $HOME/GitRepos/scripts/git_scripts/push_git.sh
        ;;

    4)  clear
        source $HOME/GitRepos/scripts/git_scripts/update_repo_directory.sh
        ;;

    5)  clear
        source $HOME/GitRepos/scripts/git_scripts/setup_repo_directory.sh
        ;;

    *)  clear
        echo 'You Selected the Wrong Selection'
        source $HOME/GitRepos/scripts/Git_scripts/gitup.sh
esac
