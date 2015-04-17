#!/bin/bash
echo "*********************"
echo "Please select your choice-:"
echo "1) Clone repository"
echo "2) Commit"
echo "3) Pull"
echo "4) Commit all Files & Push"
echo "5) Commit Specific Files & Push"
read choice_git

case $choice_git in
	1)
		echo -n "Enter url > "
		read clone_url
		git clone $clone_url
		echo "*************************************************************"
		echo "Clone Complete"
		echo "*************************************************************"
		;;
	2)
		git add -A
		echo -n "Enter commit message > "
		read text_commit
		git commit -m "Commit-$text_commit"
		echo "*************************************************************"
		echo "Commit Complete"
		echo "*************************************************************"
		;;
	3)
		git pull
		echo "*************************************************************"
		echo "Clone Complete"
		echo "*************************************************************"
		;;
	4)
		git add -A
		echo -n "Enter commit message > "
		read text_commit
		git commit -m "Commit-$text_commit"
		git push origin master
		git status
		echo "*************************************************************"
		echo "Commit Done"
		echo "*************************************************************"
		;;
	5)
		echo -n "Enter file name seperated BLANK SPACE > "
		read file_names
		git add $file_names
		echo -n "Enter commit message > "
		read text_commit
		git commit -m "Commit-$text_commit"
		git push origin master
		echo "*************************************************************"
		echo "Files yet to commit"
		echo "*************************************************************"
		git status
		echo "*************************************************************"
		echo "$file_names committed"
		echo "*************************************************************"
		;;
	*) echo "Invalid Choice!" ;;
esac



