# Claude Skills

这里存放这个仓库的 Claude Skills。

当前重点不是“收集很多技能”，而是把一个真实可用的 AI/科技内容工作流打磨清楚：

**从一手信源发现 → 选题判断 → 事实核验 → 视觉叙事 → 公众号图文交付。**

---

## Available Skills

| Skill | 用途 | 状态 |
|---|---|---|
| `gzhxz-visual-story` | AI/科技公众号视觉叙述创作工作流：选题、信源、配图、初稿、审核、交付 | Active |

---

## gzhxz-visual-story

路径：

```text
.claude/skills/gzhxz-visual-story/SKILL.md
```

适用场景：

- 从一个 AI/科技链接生成公众号图文证据稿
- 从 GitHub 项目拆解可写角度
- 从论文、产品发布、官方公告里提炼选题
- 先做 3–5 个候选选题，再锁定一个继续写
- 给编辑提供“为什么值得写 / 怎么写 / 哪些不能写死”的前置判断

---

## 推荐触发方式

```text
使用 gzhxz 公众号视觉叙述创作工作流 V6.8.0
```

```text
帮我把这个链接写成公众号文章，要有配图和信源截图：<url>
```

```text
围绕这个 GitHub 项目做一篇图文证据稿：<repo-url>
```

```text
今天跑一下公众号选题 SOP，先选题，再写成视觉叙述文章。
```

---

## Skill 的基本原则

1. **一手信源优先**  
   官方公告、Docs、Changelog、GitHub、arXiv、Product Hunt、Hacker News、维护者/研究者公开信息优先。

2. **新鲜度先过门槛**  
   S 级选题必须有近期一手更新；旧题不能硬装新。

3. **事实和热度分开**  
   二手媒体、社媒传播可以证明热度，但不能替代事实源。

4. **视觉不是装饰**  
   每张图都要证明事实、解释机制、制造对比或推动叙事。

5. **交付给编辑可直接用**  
   输出不仅是文章，还包括信源、风险、图表规划和可复用结构。

---

## Related Docs

- `docs/gzhxz-workflow.md` — 人类可读版流程说明
- `templates/article-package.md` — 公众号图文证据稿交付模板
