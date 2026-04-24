# GitHub Pages 部署指南

## 方案：使用 GitHub Desktop（最简单，支持 Apple ID 登录）

### 步骤 1：下载 GitHub Desktop
1. 打开 https://desktop.github.com/
2. 下载并安装 GitHub Desktop
3. 用 Apple ID 登录（已经登录 GitHub 的话会自动同步）

### 步骤 2：添加本地仓库
1. 打开 GitHub Desktop
2. 点击 **File** → **Add local repository**
3. 选择文件夹：`/Users/linsonlin/.qclaw/workspace-agent-5e8331f9/music-news`
4. 点击 **Add repository**

### 步骤 3：发布到 GitHub
1. 在 GitHub Desktop 中，点击 **Publish repository**
2. 仓库名填写：`music-news`
3. 勾选 **Keep this code private**（取消勾选，设为公开）
4. 点击 **Publish repository**

### 步骤 4：开启 GitHub Pages
1. 打开浏览器，访问 `https://github.com/你的用户名/music-news`
2. 点击 **Settings** 标签
3. 左侧点击 **Pages**
4. **Source** 选择 **Deploy from a branch**
5. **Branch** 选择 **main**，文件夹选择 **/(root)**
6. 点击 **Save**

### 步骤 5：访问你的页面
等待 1-2 分钟，访问：
```
https://你的用户名.github.io/music-news/
```

---

## 备选方案：命令行（如果你熟悉终端）

```bash
# 1. 进入项目目录
cd /Users/linsonlin/.qclaw/workspace-agent-5e8331f9/music-news

# 2. 在 GitHub 网页上创建空仓库（不要初始化 README）
#    访问 https://github.com/new
#    仓库名：music-news
#    选择 Public

# 3. 添加远程仓库（替换 你的用户名）
git remote add origin https://github.com/你的用户名/music-news.git

# 4. 推送代码
git push -u origin main

# 5. 然后按步骤 4 开启 GitHub Pages
```

---

## 文件说明

- `index.html` - 主页面（深色主题，完整版）
- `codepen-version.html` - 简化版（适合嵌入）
- `2026-04-24.html` - 当日新闻归档
