#!/usr/bin/env bash


if [ ! -d "$HELM_CHART_DIR" ]; then
	echo "Error: command (directory) $HELM_CHART_DIR does not exists."
	exit
fi

echo "creating kube config file"


echo "install:"
echo "\t - values:       $VALUES"
echo "\t - tag:          $CI_COMMIT_REF_SLUG"

helm upgrade --install \
  --kube-apiserver="$KUBE_APISERVER" \
  --kube-token="$KUBE_TOKEN" \
  --namespace="$KUBE_NAMESPACE" \
  "$HELM_CHART_DIR" \
	-f "$HELM_CHART_DIR/$VALUES" \
	--set image.tag="${CI_COMMIT_REF_SLUG}"
