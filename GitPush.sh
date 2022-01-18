# --------------------------------------------
# Script Name:  GitPush.sh
#      Author:  James York
#        Date:  18JAN22@1031
#     Purpose:  Pushes files to GitHub.
#
# Notes
#   After creating this script file, you need
#   to do the following:
#       1.  This file needs read-write-execute
#           file permissions so change file 
#           permissions by executing the below 
#           command at the command line:
#               chmod 755 GitPush.sh
#       2.  Run this script file by executing
#           the below command at the command
#           line:
#               bash GitPush.sh
# --------------------------------------------

#! /bin/bash

# GENERIC VARIABLES
BLANK_LINE=$''

# GIT HUB VARIABLES
REPOSITORY_NAME=Java
LOCAL_GITHUB_FOLDER_SPECIFICATION=/Users/jamesyork/Desktop/Java/GitHub/Repositories/$REPOSITORY_NAME
GIT_HUB_REPOSITORY_URL=https://github.com/jyork0214/$REPOSITORY_NAME

# UPLOAD LOCAL REPOSITORY TO GITHUB
clear
echo $BLANK_LINE
echo Standby - Synchronizing $LOCAL_GITHUB_FOLDER_SPECIFICATION with $GIT_HUB_REPOSITORY_URL...
echo $BLANK_LINE

# First of all, navigate to the GitHub repository.
cd $LOCAL_GITHUB_FOLDER_SPECIFICATION

# We're at the respository so now add Target local repository to upload.
git add .
if [ $? != 0 ]
then
    echo "ER:  Cannot add files to GitHub cache"
    echo $BLANK_LINE
    exit 1
fi
echo "OK:  Successfully added files to GitHub cache!"
echo $BLANK_LINE

# Commit additions to GitHub repository cache
CURRENT_TIMESTAMP=$(date +"%Y-%m-%d %T %Z")
git commit -m "Updated content as of $CURRENT_TIMESTAMP"
if [ $? != 0 ]
then
    echo "ER:  Cannot commit GitHub cache"
    echo $BLANK_LINE
    exit 1
fi
echo "OK:  Successfully committed GitHub cache!"
echo $BLANK_LINE

# Finally, push GitHub cache to main branch
git push
if [ $? != 0 ]
then
    echo "ER:  Cannot push to GitHub repository"
    echo $BLANK_LINE
    exit 1
fi
echo "OK:  Successfully pushed to GitHub!"
echo $BLANK_LINE
