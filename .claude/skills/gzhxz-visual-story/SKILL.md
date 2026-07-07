---
name: gzhxz-visual-story
description: Use for gzhxz WeChat public-account visual narrative article workflow: topic discovery, source verification, visual storyboard, Chinese draft, review, and delivery.
---

# gzhxz 公众号视觉叙述创作工作流 V6.8.0

Use this skill when the user asks to run or convert **gzhxz 公众号视觉叙述创作工作流**; when they need an AI/tech WeChat-style article from a topic, link, GitHub repo, product launch, paper, video, or social signal; or when they ask for a visual narrative article package.

This skill turns a raw topic or a blank daily scan into a **verified, visual-first Chinese tech article package**. It must not be a simple资讯搬运; it should produce a high-density, evidence-backed, readable story for公众号 publishing.

## Non-negotiable rules

1. **V6.8.0 Topic Engine hard rule**
   - Topic discovery must come from external first-hand or near-first-hand sources.
   - Do not use Chinese domestic media as the source of topic discovery.
   - Acceptable sources: official blogs/docs/changelogs, GitHub repos/releases/issues, Product Hunt, Hacker News, arXiv, official X posts, founder/researcher/maintainer posts, conference pages, primary datasets.

2. **Freshness gate**
   - S-level candidates require a first-hand update within the last 48–72 hours.
   - Older topics are A/B only unless there is a new official source, new data, or a strong second-wave heat signal.
   - Never pretend an old topic is new.

3. **De-duplication first**
   - Check topic registry, previous briefing memo, repo file, local notes, or prior article packages.
   - Duplicate = same subject + same core conflict + same article angle.
   - Revive only with a new first-hand development and an explicit revival reason.

4. **No fabrication**
   - If blocked/paywalled/login-only/inferred, say so in work notes.
   - Do not invent comments, feedback, scores, screenshots, product details, or dates.
   - Secondary media can prove heat, not core facts.

5. **Visual-first**
   - Every image must prove a fact, explain a mechanism, compare positions, or create a narrative turn.
   - Reject screenshots with popups, unreadable text, cropped titles, missing dates, or unclear source identity.
   - Generated images must not fake screenshots, logos, UI, charts, or source evidence.

6. **Writing style**
   - Chinese, direct, high-density, mobile-first.
   - Start with conclusion or strongest fact.
   - Avoid oily marketing language.
   - Light dry humor only when it sharpens the point.
   - Short paragraphs, strong rhythm, no wall of text.

## Startup modes

### Mode A — no topic provided
Run Topic Engine:
- Scan recent 48–72h external first-hand sources.
- Produce 3–5 candidate topic cards.
- Score each candidate.
- Mark de-dup status.
- Recommend the best candidate.
- If the user asked to “直接推进”, lock the top candidate and continue.

### Mode B — topic/link/repo/paper/product/video provided
- Run gate checks on the object.
- Verify freshness, source authority, reader value, visual feasibility, and duplicate risk.
- If it passes, lock topic and proceed.
- If it fails, explain why and suggest stronger angle or replacement topic.

## Phase 0 — Preflight checks

1. Load user writing style from `CLAUDE.md`, `writing-style.md`, `style.md`, `brand.md`, samples, or memory. Default: direct Chinese tech commentary, dense but readable, fact + judgment, light non-greasy humor.
2. Treat this document as V6.8.0 and apply the external-first-hand topic rule even if older notes mention V6.7.x.
3. Search de-dup registry files like `topic_registry.md`, `topic-dedup.md`, `gzhxz-topic-registry.md`, `source_log.md`, or prior article packages. Create/recommend one if missing.

## Module 0 — Topic Engine and gate

### Scan scope
- Official AI/company sources: OpenAI, Anthropic, Google DeepMind, Google AI, Meta AI, Microsoft, GitHub, Hugging Face, Mistral, xAI, Perplexity, Apple ML, Nvidia, AMD, Cloudflare, Vercel, Supabase.
- Developer/product sources: GitHub Trending, Releases, Issues, changelogs, docs, Product Hunt, Hacker News.
- Research: arXiv, Papers with Code, lab pages, conference pages.
- Social primary signals: official/founder/researcher/maintainer launch posts.
- User voice: GitHub issues/discussions, HN, Reddit, X replies, Product Hunt comments, public Discord/Telegram only if attributable.

### Candidate card template

```md
## 选题卡 #N — S/A/B 级 XX/100
**标题方向：** ...
**核心冲突：** ...
**目标读者：** ...
**一手信源：** source/date/URL
**新鲜度说明：** ...
**读者收益：** ...
**视觉机会：** 1... 2... 3...
**风险提示：** ...
**去重状态：** 新题 / 疑似重复 / 可复活，原因 ...
**评分明细：** 新鲜度20 · 热度15 · 一手信源15 · 趋势判断15 · 读者收益10 · 用户声音10 · 可视化10 · 风险5
```

Scoring: S 85–100, A 75–84, B 60–74, below 60 do not write. If no S-level topic exists, say so.

## Module 1 — Topic Lock

```md
## Module 1 — Topic Lock
**主题（一句话）：** ...
**目标读者：** ...
**文章目标：** 建立观点 / 完成转化 / 方法拆解 / 风险提醒
**一句话选题：** ...
**适合图文证据稿：** 是/否，原因 ...
```

The locked topic must be narrow enough to write and broad enough to explain why it matters.

## Module 2 — Three-layer source pack

### Layer 1 — Primary evidence
Official announcement, docs, GitHub repo/release/issue/PR/commit, paper, dataset, benchmark, product page, changelog, founder/maintainer post.

Record for each:
```md
- URL:
- Publisher / author:
- Date:
- What it proves:
- Reliability:
- How it will be used in article:
```

### Layer 2 — Reality layer / user voice
Use GitHub issues/discussions, HN, Reddit, X replies/quote posts, Product Hunt comments, public community messages if accessible and attributable. If blocked/login-only, do not synthesize; switch to accessible user signals.

### Layer 3 — Background and comparison
Competing tools, prior announcements, market context, technical explainers, benchmarks, earlier failures/limitations.

## Module 2.5 — Hands-on and reality check

When safe and feasible:
- Read README, install docs, examples, issues, releases, tags, contributors, stars, forks, recent commits.
- Identify what is real, demo-only, missing, and complained about.
- Run only low-risk local checks. Do not use secrets, paid APIs, or destructive commands.

Output:
```md
## Reality Layer
**What is confirmed:** ...
**What is still unverified:** ...
**User complaints / issues:** ...
**Hands-on notes:** ...
**Risk language needed in article:** ...
```

## Module 3 — Narrative Conflict

```md
## Narrative Conflict
**Surface news:** ...
**Real conflict:** ...
**Not X, but Y:** ...
**Why now:** ...
**Reader stake:** ...
**Best opening hook:** ...
**Risk boundary:** ...
```

Good conflicts: not another launch but infrastructure moving into agent layer; not benchmark win but fight over verified intelligence; not replacing people but changing what companies hire people to do.

## Module 4 — Visual storyboard

Plan images before writing:
1. Cover image: 2.35:1, readable on mobile.
2. Primary evidence screenshot.
3. Mechanism diagram.
4. Comparison image.
5. User reality screenshot.
6. Optional architecture/timeline/scorecard/code/heat chart.

```md
| ID | Image | Purpose | Source / Generation Method | Must Show | Verification Standard |
|---|---|---|---|---|---|
```

## Module 5 — Asset collection and validation

Checklist:
- Title/core text visible.
- Source identity visible.
- Date visible where relevant.
- No popup/login wall covering content.
- Mobile readability acceptable.
- Image supports a paragraph.
- Generated images do not fake evidence.

Output:
```md
| Image | URL / path | Status | Usage |
|---|---|---|---|
```

## Module 6 — Article writing

Write full Chinese article:
1. Title pool: 5–10 options, including direct, dramatic, technical, reader-benefit.
2. Opening: strongest fact/judgment first. No generic “近日/随着 AI 发展”. Explain why it matters in 3–5 short paragraphs.
3. Body: event → mechanism → visual evidence → user reality/limitation → broader judgment.
4. Ending: clear conclusion, uncertainty, what to watch next.

Style constraints:
- Chinese, direct, high-density.
- Paragraphs usually under 40 Chinese characters.
- No 3-line wall of text.
- Bold key judgments.
- Lists for parallel facts.
- Technical explanation: 一句话本质 → 拆结构 → 给例子/对比 → 收结论.
- Use uncertainty language when needed: “可能 / 目前 / 按官方说法 / 从公开信息看”.

Image insertion:
```md
![简洁图名](URL)
来源：source URL or source name
```

## Module 7 — Reviewer quality gate

### Mobile layout five questions
1. Any paragraph over 40 Chinese characters? Split it.
2. Three or more continuous plain-text lines? Break with rhythm/list/emphasis.
3. Are emphasis sentences on their own line?
4. Are parallel facts lists?
5. Are captions integrated naturally instead of noisy quote blocks?

### Fact/source audit
- Every factual claim has a source in `source_log.md`.
- Primary claims use primary sources.
- Secondary sources support heat/interpretation only.
- Dates are absolute when needed.
- Blocked/unverified details are not facts.

### Visual audit
- Every image passes validation.
- Screenshots are readable.
- Generated images are not fake evidence.

### De-dup update
Record locked topic with title, date, core conflict, status, sources, revival condition.

## Module 8 — Final delivery package

Write or deliver:
```text
candidate_links.md
user_voice_pack.md
hands_on_test_pack.md
core_conflict.md
visual_storyboard.md
article_framework.md
images/
source_log.md
article.md
preview.md
review.md
```

If files cannot be written, provide equivalent Markdown sections.

Final response must include status, locked topic, delivered files/sections, key risks, and what to watch next.

## Standard trigger prompts

- “使用 gzhxz 公众号视觉叙述创作工作流 V6.8.0”
- “帮我把这个链接写成公众号文章，要有配图和信源截图”
- “今天跑一下公众号选题 SOP”
- “围绕这个 GitHub 项目做一篇图文证据稿”
- “把这个 AI 产品发布做成公众号爆款文章”
- “先选题，再写成视觉叙述文章”

## Failure modes to avoid

- Using Chinese media as original topic source.
- Writing before source verification.
- Bad screenshots.
- Treating heat as fact.
- Repeating old topic without revival reason.
- Pure product announcement with no conflict.
- Over-dramatizing weak source.
- Fabricating user comments/hands-on results.
- Empty slogan ending.
