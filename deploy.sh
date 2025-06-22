#!/bin/bash

# 构建 Hugo 静态站点
echo "🚧 正在构建 Hugo 项目..."
hugo

# 进入 public 目录
cd public

# 初始化 Git（如果尚未）
git init

# 添加远程仓库（你只需设置一次）
git remote add origin https://github.com/Hongchen-Gao/hongchen-gao.github.io.git

# 指定分支
git branch -M main

# 添加并提交更改
git add .
git commit -m "🚀 自动部署：$(date +'%Y-%m-%d %H:%M:%S')"

# 强制推送到 GitHub Pages 仓库
git push -f origin main

echo "✅ 已部署到 GitHub Pages: https://hongchen-gao.github.io/"

