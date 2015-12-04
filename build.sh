#!/bin/bash
set -e

PACKAGE_NAME=$1
PACKAGE_TAG=${2:-"latest"}

if [ ! $PACKAGE_NAME ]; then
    echo "Usage: $0 PACKAGE_NAME [ PACKAGE_TAG ]"
    exit 1
fi

if [ ! -x "/usr/bin/docker" ]; then
    echo "Please check the 'docker' installation."
    exit 2
fi

if [ ! -f "$PACKAGE_NAME/Dockerfile" ]; then
    echo "Dockerfile not found!"
    exit 1
fi

docker build -t $PACKAGE_NAME:$PACKAGE_TAG $PACKAGE_NAME/