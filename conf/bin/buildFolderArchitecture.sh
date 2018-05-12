#!/bin/sh

if [ $# == 1 ]; then
	cat $1 | xargs mkdir
	while IFS='' read -r line || [[ -n "$line" ]]; do
		(cd "$line"
	   	touch '.keep'
  		)
	done < "$1"
	echo 'Architecture folder is created.'
else
	echo 'File of the template is needed.'
fi
