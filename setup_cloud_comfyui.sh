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

.venv/bin/python -m pip install \
  comfyui-frontend-package==1.34.9 \
  comfyui-workflow-templates==0.7.59 \
  comfyui-embedded-docs==0.3.1 \
  torch torchsde torchvision torchaudio \
  "numpy<2" "scipy<1.14" \
  einops "transformers>=4.50.3" "tokenizers>=0.13.3" \
  sentencepiece "safetensors>=0.4.2" \
  "aiohttp>=3.11.8" "yarl>=1.18.0" \
  pyyaml Pillow tqdm psutil alembic SQLAlchemy \
  "av>=14.2.0" requests simpleeval blake3 \
  "pydantic~=2.0" "pydantic-settings~=2.0" \
  kornia spandrel PyOpenGL

mkdir -p custom_nodes
if [ ! -d custom_nodes/ComfyUI-VideoHelperSuite ]; then
  git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git custom_nodes/ComfyUI-VideoHelperSuite
fi

.venv/bin/python -m pip install "opencv-python==4.10.0.84" imageio-ffmpeg
