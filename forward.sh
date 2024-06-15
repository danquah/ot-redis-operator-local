#!/usr/bin/env bash
#
set -euo pipefail
IFS=$'\n\t'

echo "Forwarding ports"
echo
kubectl -n monitoring port-forward service/prom-stack-grafana 8080:80 & \
kubectl -n monitoring port-forward service/prometheus-operated 9090:9090 & \
echo "  Grafana: http://localhost:8080 (login admin/admin)" & \
echo "  Prometheus: http://localhost:9090" & \
echo & \
echo & \
echo "Press CTRL-C to stop port forwarding and exit the script"
wait
