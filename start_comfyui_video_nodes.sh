#!/usr/bin/env bash
set -euo pipefail

cd ComfyUI

exec .venv/bin/python main.py \
  --cpu \
  --listen 0.0.0.0 \
  --port 8188
