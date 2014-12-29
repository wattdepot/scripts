#!/bin/bash

if [ ! -d "./master" ]; then
  echo "master/ directory does not exist.  Exiting..."
  exit 1
fi

if [ ! -d "./src" ]; then
  echo "src/ directory does not exist.  Exiting..."
  exit 1
fi

if [ $# != 1 ]; then
    echo "opq-publish <git commit message>"
    exit 1
fi

echo "Git pulling master to ensure local and remote are synced."
( set -x ; cd ./master ; git pull ) 

echo "Generating HTML site into master directory"
( set -x ; jekyll build --source ./src/src --destination ./master)

echo "Committing the src branch."
( set -x ; cd ./src ; git add --all . ; git commit -a -m "$1" ; git push origin src ) 

echo "Committing the master branch"
( set -x ; cd ./master ; git add --all . ; git commit -a -m "$1" ; git push origin master ) 

