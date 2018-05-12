#!/bin/sh

if [ $# == 1 ]; then
	folder=$1
else
	folder='folderList.txt'
fi

find . -type d ! -path "*/\.*" > $folder

wc -l $folder
echo "$folder is created"
