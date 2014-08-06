#!/bin/bash

if [ ! -d "./master" ]; then
  echo "master/ directory does not exist.  Exiting..."
  exit 1
fi

if [ ! -d "./src" ]; then
  echo "src/ directory does not exist.  Exiting..."
  exit 1
fi

echo "Pulling the src directory."
( set -x ; cd ./src ; git pull ) 

echo "Pulling the master directory"
( set -x ; cd ./master ; git pull)

