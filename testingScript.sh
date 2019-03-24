echo What is your commit

read commitVar

git add .
git commit -m "$commitVar"
git push origin master
