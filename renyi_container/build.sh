#!/usr/bin/env bash
source .dockerenv

cd ../docker/ && image=cu102 ./build_docker.sh

docker tag ${IMAGE_TAG} ${IMAGE_NAME}
