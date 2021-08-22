#!/bin/bash

# clone repo
git clone https://github.com/$1
dirname="$(echo $1 | cut -d'/' -f2)"
cd $dirname

# build image
docker build . -t $2

# docker login
docker logout
docker login

# push image
docker push $2


