# Install gzhxz-visual-story

这个文档说明如何下载、安装和打包 `gzhxz-visual-story` Claude Skill。

本仓库现在按 `baoyu-skills` 风格配置为 Claude Code plugin marketplace：

```text
.claude-plugin/marketplace.json
skills/gzhxz-visual-story/SKILL.md
```

其中 `skills/gzhxz-visual-story/` 是 marketplace 的规范路径。

`.claude/skills/gzhxz-visual-story/` 仍然保留，作为手动复制和历史兼容路径。

---

## 方式一：npx 快速安装（推荐）

```bash
npx skills add lokih1028/lokih1028
```

安装后在支持 Skill 的 Agent 中触发：

```text
/gzhxz-visual-story
```

或自然语言触发：

```text
使用 gzhxz 公众号视觉叙述创作工作流 V6.8.0
```

---

## 方式二：Claude Code Plugin Marketplace

在 Claude Code 中注册 marketplace：

```text
/plugin marketplace add lokih1028/lokih1028
```

然后安装插件：

```text
/plugin install gzhxz-skills@gzhxz-skills
```

这个 marketplace 目前暴露一个插件：

| Plugin | Includes |
|---|---|
| `gzhxz-skills` | `gzhxz-visual-story` |

---

## 方式三：Clone 后本地安装

### 1. Clone 仓库

```bash
git clone https://github.com/lokih1028/lokih1028.git
cd lokih1028
```

### 2. 一键安装

```bash
bash install.sh
```

脚本会把 Skill 安装到：

```text
~/.claude/skills/gzhxz-visual-story/SKILL.md
```

如果本机有 `zip` 命令，还会生成：

```text
packages/gzhxz-visual-story.zip
```

---

## 方式四：只生成 Claude.ai ZIP

```bash
git clone https://github.com/lokih1028/lokih1028.git
cd lokih1028
bash install.sh --package-only
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

## 方式五：手动复制

```bash
git clone https://github.com/lokih1028/lokih1028.git
cd lokih1028
mkdir -p ~/.claude/skills
cp -R skills/gzhxz-visual-story ~/.claude/skills/
```

检查：

```bash
ls -la ~/.claude/skills/gzhxz-visual-story
```

---

## 路径说明

| 路径 | 用途 |
|---|---|
| `.claude-plugin/marketplace.json` | Claude Code plugin marketplace 注册文件 |
| `skills/gzhxz-visual-story/SKILL.md` | 规范 marketplace skill 路径 |
| `.claude/skills/gzhxz-visual-story/SKILL.md` | 兼容旧版手动复制路径 |
| `install.sh` | 本地安装和 ZIP 打包脚本 |
| `packages/gzhxz-visual-story.zip` | 本地生成的 Claude.ai 上传包，不提交到 Git |

---

## 常见问题

### 为什么以前看不到 `.claude`？

`.claude` 是隐藏目录。文件管理器可能默认不显示点开头目录。

macOS：按 `Cmd + Shift + .` 显示隐藏文件。

终端：使用：

```bash
ls -la
```

### 现在应该看哪个路径？

优先看：

```text
skills/gzhxz-visual-story/SKILL.md
```

这是对外分发和 marketplace 安装的规范路径。

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
