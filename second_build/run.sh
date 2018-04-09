#!/bin/sh
read -p "Provide support for rlwrap? [y,N]? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    cd second_build
    docker build -t oracle/database:11.2.0.2-xe-rlwrap .

fi
echo "======================"
echo "BUILD END"
echo "======================"
