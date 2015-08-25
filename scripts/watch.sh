#!/usr/bin/env bash

DIR=`pwd`

docker run -t --rm \
  -v $DIR/docs:/style-guide/docs \
  -v $DIR/src:/style-guide/src \
  -v $DIR/gulpfile.js:/style-guide/gulpfile.js \
  brainly/style-guide node_modules/.bin/gulp watch