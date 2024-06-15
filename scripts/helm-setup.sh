#!/usr/bin/env bash
#
set -euo pipefail
IFS=$'\n\t'

helm upgrade redis ot-helm/redis --install --namespace redis-operator
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
