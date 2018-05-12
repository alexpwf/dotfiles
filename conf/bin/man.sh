#! /bin/sh

if [ $1 == "internet" ]
then
xterm -geometry 30 -e 'echo -e "\e[1;32m" && yes "error 404 : internet not found"'| xterm -geometry 30 -e 'echo -e "\e[1;32m" && yes "error 404 : internet not found"'
else
man $1
fi
