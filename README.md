# 听觉语义干扰 PRP 双任务实验 — 在线版

## 目录结构

```
实验程序_在线版/
├── index.html                 ← 实验主页面（打开即运行）
├── assets/
│   ├── images/
│   │   ├── 含T矩阵/            ← 复制自 刺激材料/含T矩阵 (20张)
│   │   ├── 无T矩阵/            ← 复制自 刺激材料/无T矩阵 (20张)
│   │   └── 数字刺激/           ← 复制自 刺激材料/数字刺激 (8张)
│   └── audio/
│       ├── 白噪音.mp3          ← 复制自 刺激材料/白噪音.mp3
│       └── 无序母语单字语音.mp3 ← 复制自 刺激材料/无序母语单字语音.mp3
└── README.md
```

## 第1步：复制素材

将桌面 `刺激材料` 文件夹中的文件复制到对应目录：

```
cp "/c/Users/a2171/Desktop/刺激材料/含T矩阵/"*.png  "/c/Users/a2171/Desktop/实验程序_在线版/assets/images/含T矩阵/"
cp "/c/Users/a2171/Desktop/刺激材料/无T矩阵/"*.png  "/c/Users/a2171/Desktop/实验程序_在线版/assets/images/无T矩阵/"
cp "/c/Users/a2171/Desktop/刺激材料/数字刺激/"*.png  "/c/Users/a2171/Desktop/实验程序_在线版/assets/images/数字刺激/"
cp "/c/Users/a2171/Desktop/刺激材料/"*.mp3           "/c/Users/a2171/Desktop/实验程序_在线版/assets/audio/"
```

## 第2步：部署上线（GitHub Pages）

1. 在 [github.com](https://github.com) 创建一个新仓库（如 `prp-experiment`）
2. 在终端依次执行：

```bash
cd "C:\Users\a2171\Desktop\实验程序_在线版"
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/你的用户名/prp-experiment.git
git branch -M main
git push -u origin main
```

3. 在 GitHub 仓库页面：
   - 进入 **Settings → Pages**
   - Source 选 **Deploy from a branch**
   - Branch 选 **main**，目录选 **/(root)**
   - 点 Save
4. 等 1-2 分钟，你的实验就上线了：
   ```
   https://你的用户名.github.io/prp-experiment/
   ```

## 第3步：嵌入见数

在见数问卷中添加「外部链接」题型：

- **链接 URL**: `https://你的用户名.github.io/prp-experiment/?subject_id={$被试编号}`
- **打开方式**: 建议选「当前窗口」
- **完成后跳转**: 实验结束后自动返回见数

### 传参说明

| 参数 | 见数变量 | 说明 |
|------|---------|------|
| `subject_id` | `{$被试编号}` 或 `{$id}` | 被试编号 |

实验结束后，JS 会自动向见数传回数据（postMessage）并下载 CSV。

## 第4步：下载数据

实验结束后浏览器会自动下载 CSV 文件，包含以下字段：

| 字段 | 说明 |
|------|------|
| subject | 被试编号 |
| trial | 试次序号 |
| blockType | white_noise / speech |
| soaMs | 50 / 150 / 500 |
| hasT | 1=含T, 0=不含T |
| digit | 目标数字 |
| t1RtMs | 任务一反应时(ms) |
| t1Correct | 任务一正确(1/0) |
| t2RtMs | 任务二反应时(ms) ✅ 核心因变量 |
| t2Correct | 任务二正确(1/0) |

## 浏览器兼容

- 桌面端：键盘 F/J/↑/↓
- 移动端/平板：触屏按钮（自动显示）
- 推荐：**Chrome 桌面版**（精度最佳）
