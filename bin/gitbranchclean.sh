#!/bin/bash

export terminal=$(tty)

git branch | \
while read -r branch
do
    if [ "$branch" != "master" ] && [ "$branch" != "* master" ] ; then
        while true;
        do
            read -p "Delete branch $branch? [y/n]" yn
            case $yn in
                [Yy]* ) git branch -d $branch;break;;
                [Nn]* ) break;;
            esac
        done < $terminal
    fi
done
