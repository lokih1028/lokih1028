# Packages

这里放 `gzhxz-visual-story` 的本地打包说明。

因为 GitHub API 写入二进制 ZIP 不如本地 `zip` 命令稳定，仓库默认保留源码结构；你可以一条命令在本地生成 Claude.ai 可上传的 Skill 包：

```bash
bash install.sh
```

脚本会同时完成两件事：

1. 安装到 Claude Code 个人 Skill 目录：

```text
~/.claude/skills/gzhxz-visual-story/
```

2. 如果本机有 `zip` 命令，生成：

```text
packages/gzhxz-visual-story.zip
```

正确 ZIP 结构：

```text
gzhxz-visual-story.zip
└── gzhxz-visual-story/
    └── SKILL.md
```

如果只想手动打包：

```bash
mkdir -p packages
cd .claude/skills
zip -r ../../packages/gzhxz-visual-story.zip gzhxz-visual-story
```

然后到 Claude.ai 的 `Customize > Skills` 上传这个 ZIP。