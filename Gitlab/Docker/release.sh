#!/bin/sh

# login to provided docker registry
docker login -u "${REGISTRY_USERNAME}" -p "${REGISTRY_TOKEN}" "${REGISTRY_ADDRESS}"

docker load --input ${CI_PROJECT_NAME}-${CI_COMMIT_REF_SLUG}.tar

image="${REGISTRY_ADDRESS}/${PROJECT_NAMESPACE}/snappline-${CI_PROJECT_NAME}:${CI_COMMIT_REF_SLUG}"

docker tag "${CI_PROJECT_NAME}":"${CI_COMMIT_REF_SLUG}" "$image"

docker push "$image"
