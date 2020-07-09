#! /bin/bash
clear
echo -e '||=================||'
echo -e '||    Main Menu    ||'
echo -e '||=================||'

echo -e 'What would you like to do?'
echo -e ' '
echo -e 'Git Menu...................1'
echo -e 'Install Menu...............2'
echo -e 'Update Menu................3'
echo -e ''
echo -e 'Exit.......................0'
echo ''

read input

case "$input" in
    exit) exit
       ;;
    1)  clear
        source $HOME/GitRepos/scripts/git_scripts/gitup.sh
        ;;

    2)  clear
        source $HOME/GitRepos/scripts/installer_scripts/install.sh
        ;;

    3)  clear
        source $HOME/GitRepos/scripts/update_scripts/up.sh
        ;;

    *) 
        echo 'You Selected the Wrong Selection'
        source $HOME/GitRepos/scripts/main.sh
esac
