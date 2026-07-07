# Install gzhxz-visual-story

这个文档说明如何下载、安装和打包 `gzhxz-visual-story` Claude Skill。

核心 Skill 文件在：

```text
.claude/skills/gzhxz-visual-story/SKILL.md
```

如果你在文件管理器里没看到 `.claude`，通常不是仓库缺文件，而是因为 `.claude` 是隐藏目录。

---

## 方式一：Claude Code 本地安装

### 1. Clone 仓库

```bash
git clone https://github.com/lokih1028/lokih1028.git
cd lokih1028
```

### 2. 一键安装

```bash
bash install.sh
```

安装后目录应该是：

```text
~/.claude/skills/gzhxz-visual-story/SKILL.md
```

### 3. 在 Claude Code 中触发

```text
/gzhxz-visual-story
```

也可以用自然语言触发：

```text
使用 gzhxz 公众号视觉叙述创作工作流 V6.8.0
```

---

## 方式二：手动复制

```bash
mkdir -p ~/.claude/skills
cp -R .claude/skills/gzhxz-visual-story ~/.claude/skills/
```

检查：

```bash
ls -la ~/.claude/skills/gzhxz-visual-story
```

---

## 方式三：打包 ZIP 上传到 Claude.ai

在仓库根目录执行：

```bash
mkdir -p packages
cd .claude/skills
zip -r ../../packages/gzhxz-visual-story.zip gzhxz-visual-story
```

正确 ZIP 结构应该是：

```text
gzhxz-visual-story.zip
└── gzhxz-visual-story/
    └── SKILL.md
```

然后进入 Claude.ai：

```text
Customize > Skills > Upload
```

上传 `packages/gzhxz-visual-story.zip` 并启用。

---

## 常见问题

### 为什么 GitHub 页面看不到这个目录？

它在隐藏目录 `.claude/` 下面。直接访问路径即可：

```text
.claude/skills/gzhxz-visual-story/SKILL.md
```

### 为什么下载 ZIP 后看不到 `.claude`？

文件管理器可能隐藏点开头目录。

macOS：按 `Cmd + Shift + .` 显示隐藏文件。

终端：使用 `ls -la`。

### 这个 Skill 是做什么的？

它把 AI/科技主题、链接、GitHub 项目、论文、产品发布或社区信号，转换成：

- 候选选题卡
- 一手信源包
- 用户声音 / 社区反馈
- 核心冲突
- 视觉 storyboard
- 文章标题池
- 正文初稿
- 图片插入建议
- 风险提醒
- 编辑可直接使用的 Markdown 包

一句话：不是资讯搬运，而是给 AI/科技公众号编辑用的图文证据稿工作流。