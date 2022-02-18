#!/usr/bin/env bash
source .dockerenv

cd ../docker/ && image=cu102-conda source build_docker.sh

cd ../renyi_container && docker build --rm -t ${IMAGE_NAME} --build-arg "BASE_IMAGE=${IMAGE_TAG}" .