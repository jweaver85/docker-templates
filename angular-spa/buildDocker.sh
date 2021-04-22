#! /bin/bash

BUILD_DIR=www
IMAGE_NAME=ionic-angular-nginx

rm -rf $BUILD_DIR

ionic build

docker build -t $IMAGE_NAME .
