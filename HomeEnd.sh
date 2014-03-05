#!/bin/bash

# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in

echo -ne "Set Home/End keys ... "
sleep 1
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
xmodmap $DIR/Xmodmap
echo "OK"

