#!/usr/bin/env bash
#
set -euo pipefail
IFS=$'\n\t'

echo "** Reset"
scripts/kind-reset.sh

echo "** Installing observability stack"
scripts/prom-stack-install-update.sh

echo "** Installing Redis Operator"
scripts/redis-operator-install-update.sh

echo "** Adding Redis Standalone"
scripts/redis-add-standalone.sh

echo "** Adding Redis Cluster"
scripts/redis-add-cluster.sh
