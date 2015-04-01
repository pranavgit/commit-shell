#!/bin/bash

git add -A

echo -n "Enter commit message > "
read text_commit

git commit -m "Commit-$text_commit"
git push origin master
git status

echo "*********************"
echo "Commit Done"
echo "*********************"


