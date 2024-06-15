#!/usr/bin/env bash
#

set -euo pipefail
IFS=$'\n\t'

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${SCRIPT_DIR}"
cd ..

kind delete cluster --name kind
kind create cluster --name kind --config kind-config.yml

