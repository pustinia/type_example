#!/bin/bash

# grab variables
source vars

DOCKER=docker
BUILD_DATE=$(date -u '+%Y-%m-%dT%H:%M:%S%z')

echo "${IMAGE_NAME}:${IMAGE_TAG}"
# build image
$DOCKER build --no-cache                             \
              --pull                                 \
              --tag ${IMAGE_NAME}                    \
              --build-arg BUILD_DATE=${BUILD_DATE}   \
              --build-arg IMAGE_TAG=${IMAGE_TAG}     \
              --build-arg TEST_PORT=${TEST_PORT}     \
              .