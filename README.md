# ComfyUI GitHub Cloud

这个小仓库用于在 GitHub Codespaces 云端打开 ComfyUI。

## 运行方式

1. 把这个文件夹上传到 GitHub 仓库。
2. 在仓库页面点击 `Code`。
3. 选择 `Codespaces`。
4. 点击 `Create codespace on main`。
5. 等待自动安装完成。
6. 在终端运行：

```bash
bash start_comfyui_safe.sh
```

打开转发出来的 `8188` 端口，就是 ComfyUI。

如果要尝试加载视频辅助节点：

```bash
bash start_comfyui_video_nodes.sh
```

## 限制

GitHub Codespaces 通常没有 GPU，适合打开界面、整理工作流、测试轻量功能；不适合真正快速生成 AI 视频。

真正生成视频建议用 GPU 云平台，例如 RunPod、Google Colab、Hugging Face Spaces GPU。
