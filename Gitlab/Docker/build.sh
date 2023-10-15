#!/bin/sh

image="${CI_PROJECT_NAME}:${CI_COMMIT_REF_SLUG}"

# shellcheck disable=SC2046
docker build \
    --build-arg BUILD_DATE=$(TZ=Asia/Tehran date '+%FT%T') \
    --build-arg VCS_REF="${CI_COMMIT_SHA}" \
    --build-arg BUILD_VERSION="${CI_COMMIT_REF_SLUG}" \
    --no-cache \
    -t "${image}" .

docker save -o ${CI_PROJECT_NAME}-${CI_COMMIT_REF_SLUG}.tar "${image}"
