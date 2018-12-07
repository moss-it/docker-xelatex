#!/bin/bash

IMAGE=tex:4
NAME=ctex
HOST_FOLDER="$(pwd)/work"
CONTAINER_FOLDER="/test-folder"

docker build -t $IMAGE .
docker run -d --name $NAME -v $HOST_FOLDER:$CONTAINER_FOLDER -w $CONTAINER_FOLDER $IMAGE sleep 10000
