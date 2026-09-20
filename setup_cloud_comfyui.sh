#!/usr/bin/env bash
set -euo pipefail

if [ ! -d ComfyUI ]; then
  git clone https://github.com/comfyanonymous/ComfyUI.git
  cd ComfyUI
  git switch --detach v0.5.0
  cd ..
fi

cd ComfyUI

python -m venv .venv
.venv/bin/python -m pip install --upgrade pip
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python -m pip install "numpy<2" "scipy<1.14"

mkdir -p custom_nodes
if [ ! -d custom_nodes/ComfyUI-VideoHelperSuite ]; then
  git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git custom_nodes/ComfyUI-VideoHelperSuite
fi

.venv/bin/python -m pip install "opencv-python==4.10.0.84" imageio-ffmpeg
