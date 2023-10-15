#!/bin/sh

# login into kubernetes cluster
oc login --token="${KUBE_TOKEN}" --server="${KUBE_APISERVER}"

# use current namespace
oc project "${KUBE_NAMESPACE}"

# make new changes
oc apply \
  -f "pod.yaml"
