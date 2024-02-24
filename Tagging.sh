#!/bin/bash
#This script is used to creating git branch as well as tagging.
#The corresponding Jenkins job to execute this script is http://10.5.33.88:8081/view/New_test_view/job/Create_Tagging/
#This job will create a tag on the  already existing branch. 
#If the branch does not exist, it will create the new branch and apply a tag.
#While executing the Jenkins Job, Please make sure the input "base branch" and "new branch" should be provided to,
#- apply tags on existing branch (in this case, base branch = new branch)
#- create new branch and apply tags.(in this case, base branch != new branch and user is expected to give new branch name)


set -x
CURRENT=`pwd`
#Here it is showing present working directory
echo "$CURRENT"
read -p "Enter Git Url of repo:" url
read -p "Enter Git checkout branch name:" branch
cd "$CURRENT"
#This will clone a repo
git clone $url
read -p "Enter folder of cloned repo:" repo
cd "$repo"
git checkout $branch
git branch
#This will update the submodules included
git submodule update --init --recursive

while :
do  
    read -p "Enter the new release branch name: " "b"
    branch=$b
    # The branch exist it will switch to that in input branch if doesn't exist it will create new branch
    if [ $(git branch --show-current) != "$branch" ]; then
	  if [[ $(git branch | grep "$branch") == "$branch" ]];then	  
	       echo "branch already exist and switch branch to $branch"    
	       git checkout  $branch
            git submodule update --init --recursive
	  else
            echo "branch doesn't exist so creating and switching branch to $branch"
            git submodule update --init --recursive
            git checkout -b $branch
            git submodule foreach git checkout -b $branch
	        git submodule update --init --recursive
               read -p " Do you Continue and push current $branch to remote repo (y/n)?" choice
               case "$choice" in 
                 y|Y ) echo "yes" `git push -u origin $branch` `git submodule foreach git push origin $branch`;;
                 n|N ) echo "no";;
                 * ) echo "invalid";;
               esac
               echo "new branch has been created and pushed"	
	  fi     
        elif [[ $(git branch --show-current) == "$branch" ]];then
    	  echo "creating new git tag for new release"
          read -p "Enter new git submodule and branch tag version version: " x 
	#creating git tags for submodule and branch 
          `git submodule foreach --recursive git tag -a -f $x -m $message`
          `git tag -a $x -m $message`
          git tag -l $x
          git submodule foreach --recursive git tag -l $x >>submodule-$x.log
	  echo "Git tags has been created"
        read -p "Do you want continue and push the git tag $x to remote repo(y/n)?" TAG
          if [ "$TAG" = "y" ]; then
             echo "Yes";
             git push origin $x
	         cp D:/jenkins/Slave1/workspace/Tag-clustera_ui/subupui.sh .
			 sh subupui.sh
			 sleep 20
			 sh submodulepush.sh >pushtagui-$x.log
    	     echo "git tags has been pushed to remote repo please check in bitbucket"
          else
             echo "Don't push";
          fi
           break
    else
        echo "quit from the loop"	
    fi	 
done