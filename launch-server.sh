#!/bin/bash

cd /site

echo "Build mode $BUILD"

if [ "$BUILD" = "dev" ]
then
    hugo server --bind 0.0.0.0 -D
else
    hugo
fi