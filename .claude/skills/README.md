# Claude Skills

This directory is kept for direct Claude Code copying and backward compatibility.

The marketplace-facing canonical path is now:

```text
skills/gzhxz-visual-story/SKILL.md
```

The compatible direct-copy path remains:

```text
.claude/skills/gzhxz-visual-story/SKILL.md
```

## Available Skills

| Skill | Purpose | Status |
|---|---|---|
| `gzhxz-visual-story` | AI/tech WeChat visual narrative workflow: topic discovery, source verification, visual storyboard, Chinese draft, review, and delivery | Active |

## Recommended Installation

Use the repository as a marketplace:

```bash
npx skills add lokih1028/lokih1028
```

Or in Claude Code:

```text
/plugin marketplace add lokih1028/lokih1028
/plugin install gzhxz-skills@gzhxz-skills
```

## Manual Copy

```bash
git clone https://github.com/lokih1028/lokih1028.git
cd lokih1028
mkdir -p ~/.claude/skills
cp -R skills/gzhxz-visual-story ~/.claude/skills/
```

## Trigger Examples

```text
/gzhxz-visual-story
```

```text
使用 gzhxz 公众号视觉叙述创作工作流 V6.8.0
```

```text
围绕这个 GitHub 项目做一篇图文证据稿：<repo-url>
```

```text
今天跑一下公众号选题 SOP，先选题，再写成视觉叙述文章。
```

## Core Principles

1. **First-hand sources first**  
   Official announcements, docs, changelogs, GitHub, arXiv, Product Hunt, Hacker News, and maintainer/researcher posts are preferred.

2. **Freshness gate before writing**  
   S-level topics require recent first-hand movement. Old topics need a real revival reason.

3. **Separate facts from heat**  
   Secondary media and social spread can prove attention, not core facts.

4. **Visuals are evidence, not decoration**  
   Every image should prove a fact, explain a mechanism, create contrast, or move the story forward.

5. **Editor-ready delivery**  
   Output should include sources, risks, visual plan, article structure, and reusable Markdown.

## Related Docs

- `docs/install.md` — install and packaging guide
- `docs/gzhxz-workflow.md` — human-readable workflow overview
- `templates/article-package.md` — reusable article package template
