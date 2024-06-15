#!/usr/bin/env bash
#

set -euo pipefail
IFS=$'\n\t'

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${SCRIPT_DIR}"


helm repo add ot-helm https://ot-container-kit.github.io/helm-charts/

kubectl create namespace redis-operator \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f -

kubectl create namespace redis-instance \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f -

helm upgrade \
  --install \
  --namespace redis-operator \
  redis-operator ot-helm/redis-operator

# Default credentials that we'll have everything use
kubectl create \
  --from-literal=password=password \
  --from-literal=username=username \
  --namespace redis-instance \
  --dry-run=client \
  -o yaml \
  secret generic redis-secret \
  | kubectl apply -f -

