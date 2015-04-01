#!/bin/bash

echo -n "Enter file name seperated BLANK SPACE > "
read file_names

git add $file_names

echo -n "Enter commit message > "
read text_commit

git commit -m "Commit-$text_commit"
git push origin master
echo "*********************"
echo "Files yet to commit"
echo "*********************"
git status

echo "*********************"
echo "$file_names committed"
echo "*********************"


