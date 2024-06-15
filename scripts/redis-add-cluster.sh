#!/usr/bin/env bash
#
set -euo pipefail
IFS=$'\n\t'

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "${SCRIPT_DIR}"

helm upgrade \
 --install \
 --namespace redis-instance \
 --values ../values/redis-cluster-values.yaml \
 redis-cluster ot-helm/redis-cluster
