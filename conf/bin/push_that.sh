#!/bin/sh
find ./ -name '#*#' -printf '\033[31m%h%f Done\n\033[0m' -delete
find ./ -name '*~' -printf '\033[33m%h%f Done\n\033[0m' -delete
find ./ -name 'a.out' -printf '\033[35m%h%f Done\n\033[0m' -delete
make fclean
if [[ $1 ]]
then
git add *
git commit -am "$1"
echo "$1"
else
git add *
git commit -am "auto push"
fi
git pull
git push origin master
