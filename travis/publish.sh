#!/bin/bash -ex

version="latest"
if [ $TRAVIS_BRANCH != "master" ] ; then
  version=$TRAVIS_BRANCH
fi
tag=dojot/crypto:$version


docker build -t $tag .
docker login -u="$USERNAME" -p="$PASSWD"
docker push $tag
