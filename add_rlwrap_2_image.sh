#!/bin/bash
read -p "Provide support for rlwrap? [y,N]? " CONT
if [ "$CONT" = "y" ]; then
  cd second_build
  docker build -t oracle/database:11.2.0.2-xe-rlwrap .
  cd ..
  exit 0
fi
