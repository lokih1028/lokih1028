# CLAUDE.md

Claude Code marketplace plugin for the gzhxz AI/tech visual narrative workflow. Current workflow version: **V6.8.0**.

## Architecture

Skills are exposed through the single `gzhxz-skills` plugin in `.claude-plugin/marketplace.json`.

| Area | Purpose |
|---|---|
| Plugin registry | `.claude-plugin/marketplace.json` defines plugin metadata and skill paths |
| Canonical skills | `skills/gzhxz-visual-story/SKILL.md` is the marketplace-facing skill |
| Legacy Claude path | `.claude/skills/gzhxz-visual-story/SKILL.md` is kept for direct local copying |
| Human docs | `docs/` explains installation and workflow stages |
| Templates | `templates/` contains reusable article package formats |

## Available Skill

| Skill | Description |
|---|---|
| `gzhxz-visual-story` | Verified, visual-first Chinese AI/tech WeChat article workflow: topic discovery, source verification, visual storyboard, draft, review, and delivery |

## Installation Paths

Recommended marketplace install:

```bash
npx skills add lokih1028/lokih1028
```

Claude Code plugin marketplace install:

```text
/plugin marketplace add lokih1028/lokih1028
/plugin install gzhxz-skills@gzhxz-skills
```

Local install:

```bash
bash install.sh
```

## Skill Self-Containment

Each skill must remain portable as a standalone folder. Do not make `SKILL.md` depend on files outside its own skill directory for core behavior.

Allowed from `SKILL.md`:
- Inline rules and workflow steps
- Optional references that are copied into the same skill folder

Avoid from `SKILL.md`:
- Links to repo-root docs as required execution context
- References to sibling skills unless the dependency is explicit and optional
- Hidden assumptions about local credentials, private notes, or unpublished files

## Source and Fact Rules

This repo is for AI/tech self-media work. The skill must preserve these rules:

1. Topic discovery starts from external first-hand or near-first-hand sources.
2. Chinese secondary media can prove heat, not core facts.
3. S-level topics require recent first-hand movement, usually within 48–72 hours.
4. Screenshots and images must prove facts, explain mechanisms, or support narrative turns.
5. Separate fact, inference, risk, and opinion.

## Updating the Skill

When changing workflow behavior, update together:

1. `skills/gzhxz-visual-story/SKILL.md`
2. `.claude/skills/gzhxz-visual-story/SKILL.md` if keeping the legacy copy in sync
3. `.claude-plugin/marketplace.json` version if the change is user-visible
4. `README.md` and `README.zh.md` if install or usage changes
5. `docs/install.md` if distribution changes

## Packaging

`install.sh` installs the canonical skill to `~/.claude/skills/` and can generate a Claude.ai upload ZIP at `packages/gzhxz-visual-story.zip`.

Generated ZIP files are ignored by Git. Keep source in Git; let users package locally.

## Writing Style

Default public-facing copy should be concise, direct, and useful to AI/tech editors. Chinese copy can be dense and high-signal with light dry humor; English copy should stay business-concise.
