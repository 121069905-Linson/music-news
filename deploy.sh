#!/bin/bash
# GitHub Pages 一键部署脚本

echo "🎵 音乐热点页面部署脚本"
echo ""

# 检查是否已登录
echo "检查 GitHub 登录状态..."
if ! git config user.name > /dev/null 2>&1; then
    echo "⚠️ 请先配置 Git 用户信息："
    echo "   git config --global user.name \"你的名字\""
    echo "   git config --global user.email \"你的邮箱\""
    exit 1
fi

# 初始化仓库（如果还没有）
if [ ! -d ".git" ]; then
    git init
    git branch -M main
fi

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: Music News Daily" 2>/dev/null || echo "已是最新版本"

# 检查远程仓库
if ! git remote get-url origin > /dev/null 2>&1; then
    echo ""
    echo "🔗 请输入你的 GitHub 仓库地址（格式：https://github.com/用户名/music-news.git）"
    read -p "> " repo_url
    git remote add origin "$repo_url"
fi

# 推送到 GitHub
echo ""
echo "📤 推送到 GitHub..."
git push -u origin main

echo ""
echo "✅ 推送完成！"
echo ""
echo "📋 下一步：开启 GitHub Pages"
echo "   1. 打开 https://github.com/$(git config user.name)/music-news/settings/pages"
echo "   2. Source 选择 'Deploy from a branch'"
echo "   3. Branch 选择 'main'，文件夹选择 '/ (root)'"
echo "   4. 点击 Save"
echo ""
echo "⏱️  等待 1-2 分钟后，访问："
echo "   https://$(git config user.name).github.io/music-news/"
