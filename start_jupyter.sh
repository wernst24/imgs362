#!/usr/bin/env bash
set -euo pipefail

JUP=~/miniconda3/envs/mlia-tf/bin/jupyter

TS_IP="$(tailscale ip -4 | head -n1)"

exec "$JUP" notebook \
  --no-browser \
  --ip="$TS_IP" \
  --port=8888 \
  --NotebookApp.port_retries=0

