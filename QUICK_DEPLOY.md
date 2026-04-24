# 30秒快速部署到 GitHub Pages

## 前提
- 已用 Apple ID 登录 GitHub
- 已添加 SSH 密钥到 GitHub（你刚才做的）

## 步骤

### 1. 在 GitHub 创建仓库
打开 https://github.com/new
- Repository name: `music-news`
- 选择 **Public**
- **不要**勾选 Initialize with README
- 点击 **Create repository**

### 2. 上传文件
在仓库页面：
1. 点击 **uploading an existing file** 链接
2. 把 `index.html` 文件拖进去
3. 点击 **Commit changes**

### 3. 开启 GitHub Pages
1. 点击 **Settings** 标签
2. 左侧点击 **Pages**
3. **Source** 选择 **Deploy from a branch**
4. **Branch** 选 `main`，文件夹选 `/(root)`
5. 点击 **Save**

### 4. 完成！
等待 1-2 分钟，访问：
```
https://linsonlin.github.io/music-news/
```

---

文件位置：
```
/Users/linsonlin/.qclaw/workspace-agent-5e8331f9/music-news/index.html
```
