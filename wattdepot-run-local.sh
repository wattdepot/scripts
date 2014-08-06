#!/bin/bash

if [ ! -d "./master" ]; then
  echo "src/ directory does not exist.  Exiting..."
  exit 1
fi

DIR="$( cd "$( dirname "$0" )" && pwd )"

set -x
jekyll serve --source $DIR/src/src --destination $DIR/src/src/_site --baseurl "" --watch
