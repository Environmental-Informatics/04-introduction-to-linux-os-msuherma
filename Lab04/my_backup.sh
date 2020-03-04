#!/bin/bash
# Backs up a single project directory
# msuherma@purdue.edu 3/3/2020

if [ $# != 1]
then
    echo Usage: A sigle argument which is the directory to backup
    exit
fi
if [ ! -d ~/Lab04/$1]
then
    echo 'The given directory does not seem to exist (possible typo?)'
    exit
fi
date = 'date +%F'

# Do we already have a backup folder for todays date?
if [ -d ~/mybackups/$1_$date ]
then
    echo 'This project has already been backed up today, overwrite?'
    read answer
    if [$answer != 'y' ]
    then
        exit
    fi
else
    mkdir ~/mybackups/$1_$date
fi
cp -R ~/projects/$1 ~/mybackups/$1_$date
echo Backup of $1 completed


