# --------------------------------------------
# Script Name:  Compile.sh
#  Author:  James York
#  Date:  18JAN22@1031
# Purpose:  Compile a java source file and, 
#           upon success, copies the source
#           file to the local GitHub
#           repository as spedified in the 
#           corresponding variable below.
# Notes
#   After creating this script file, you need
#   to do the following:
#       1.  This file needs read-write-execute
#           file permissions so change file 
#           permissions by executing the below 
#           command at the command line:
#               chmod 755 Compile.sh
#       2.  Run this script file by executing
#           the below command at the command
#           line:
#               bash Compile.sh
# --------------------------------------------

#! /bin/bash
PROJECT_NAME=Client

# GENERIC VARIABLES
BLANK_LINE=$''

# GITHUB REPOSITORY VARIABLES.
REPOSITORY_NAME=Java
LOCAL_GITHUB_FOLDER_SPECIFICATION=/Users/jamesyork/Desktop/Java/GitHub/Repositories/$REPOSITORY_NAME

# JAVA VARIABLES.
DIR_CLASSPATH=.;

# PROJECT VARIABLES.
DIR_JAVA=/Users/jamesyork/Desktop/Java
DIR_PROJECT=$DIR_JAVA/Projects/$PROJECT_NAME
DIR_SRC=$DIR_PROJECT/src
DIR_BIN=$DIR_PROJECT/bin

# COMPILE FIRST JAVA SOURCE CODE FILE.
SOURCE_FILE_1=Client
rm $DIR_BIN/$SOURCE_FILE_1.class
clear
echo Compiling $SOURCE_FILE_1.java - Standby...
javac -cp $DIR_CLASSPATH -d $DIR_BIN $DIR_SRC/$SOURCE_FILE_1.java
if [ $? != 0 ]
then
    echo "Compilation Status:  Failed"
    echo $BLANK_LINE
    exit 1
fi

echo "Compilation Status:  Success!"
echo $BLANK_LINE

# COPY FILES TO GITHUB REPOSITORY ON THIS MACHINE.
cp -R $DIR_SRC/$SOURCE_FILE_1.java $LOCAL_GITHUB_FOLDER_SPECIFICATION
cp -R $DIR_PROJECT/Compile.sh $LOCAL_GITHUB_FOLDER_SPECIFICATION
cp -R $DIR_PROJECT/GitPush.sh $LOCAL_GITHUB_FOLDER_SPECIFICATION
