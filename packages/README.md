# Packages

This directory is for locally generated Skill ZIP packages.

Generated archives are intentionally ignored by Git. The repository keeps source files; users generate uploadable packages locally.

## Generate Claude.ai ZIP

```bash
bash install.sh --package-only
```

If `zip` is available, this creates:

```text
packages/gzhxz-visual-story.zip
```

Correct ZIP structure:

```text
gzhxz-visual-story.zip
└── gzhxz-visual-story/
    └── SKILL.md
```

Upload it in Claude.ai:

```text
Customize > Skills > Upload
```

## Install and package together

```bash
bash install.sh
```

This does two things:

1. Installs the skill to:

```text
~/.claude/skills/gzhxz-visual-story/
```

2. Generates the ZIP package when `zip` exists:

```text
packages/gzhxz-visual-story.zip
```

## Source path

The canonical source path is:

```text
skills/gzhxz-visual-story/SKILL.md
```

The legacy direct-copy path is kept for compatibility:

```text
.claude/skills/gzhxz-visual-story/SKILL.md
```
