#!/usr/bin/env bash
#
# Install the Prometheus stack.
#
set -exuo pipefail
IFS=$'\n\t'

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "${SCRIPT_DIR}"

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm upgrade \
  --install \
  --namespace monitoring \
  --create-namespace \
  --values ../values/prom-stack-values.yaml \
  --wait \
  prom-stack prometheus-community/kube-prometheus-stack
