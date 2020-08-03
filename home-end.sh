#!/bin/bash

# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in

echo -ne "Set Home/End keys in while ... "
while(true)
do
	DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	xmodmap "Xmodmap"
	sleep 2
done
