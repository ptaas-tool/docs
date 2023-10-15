#!/bin/sh

helm registry login -u "${REGISTRY_USERNAME}" -p "${REGISTRY_TOKEN}" "${OKD_REGISTRY}"

helm package "${HELM_CHART_DIR}"

echo "adding chart prefix to helm chart"

mv "${HELM_CHART_NAME}-${CI_COMMIT_REF_NAME}".tgz "chart-${HELM_CHART_NAME}-${CI_COMMIT_REF_NAME}".tgz

echo "pushing chart to okd registry"

helm push "chart-${HELM_CHART_NAME}-${CI_COMMIT_REF_NAME}".tgz oci://"${OKD_REGISTRY}"/"${REGISTRY_USERNAME}"
