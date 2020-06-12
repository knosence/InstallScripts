#! /bin/bash

git_repos=(
'knosence/scripts'
'knosence/apa_latex_template'
'knosence/org-notes'
'knosence/HtmlCssExercise'
'knosence/resume-cv'
'knosence/masonic-ritual'
'knosence/ResumeSite'
'knosence/rust-cheatsheet'
'ashwanikumar04/practical-design-patterns'
'redox-os/redox'
'jwilm/alacritty'
'shmishtopher/DailyCode'
'brndnmtthws/cracking-the-coding-interview-rust'
'imcodingideas/map-filter-reduce-exercises'
'onivim/oni2'
)


directory="GitRepos"

cd
if [ ! -d "$directory" ]; then
    echo "==> GitRepos Directory does not exist"
    echo "==> Making Directory"
    mkdir GitRepos
    
fi

cd GitRepos

for repo in "${git_repos[@]}"
do
    echo "==> Pulling down $repo"
    git clone http://github.com/"$repo"

    echo "==> Done with $repo"
done

cd
rm -Rf scripts

bash <(curl -s https://raw.githubusercontent.com/ChristianChiarulli/nvim/master/utils/install.sh)
echo set preview_image_method ueberzug >> ~/.config/ranger/rc.config



