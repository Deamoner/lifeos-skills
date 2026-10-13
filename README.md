# LifeOS Skills

## Quick install

```bash
curl -fsSL https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/install.sh | bash
```

Or paste this to your AI agent:

> Install the LifeOS skills from https://github.com/Deamoner/lifeos-skills for yourself (follow AGENTS.md), then run lifeos-initialize with me.

Then:
1. Restart your agent or open a new session.
2. Ask it to run `lifeos-initialize`.
3. Answer the intake questions (say "skip" to any).
4. Add the one or two area skills it recommends, then grow from there.

**Lose the stress, build your dream life with AI.**

LifeOS isn't about saving a few minutes. It's about executing at life better. Teach a team of AI agents how you want your life run, let them do it relentlessly, and keep giving them more as they can handle more. The thoughtful gift, the anniversary trip, the health check-in, the follow-up you would have forgotten: things you never had time for now get done, quietly, every day.

These are generic, reusable agent skills (plain `SKILL.md` files) for setting up your own LifeOS: one chief of staff agent plus owner agents for each area of your life.

## The skills

Start with `lifeos-initialize`, then add one area at a time.

| Skill | What it does |
|---|---|
| [lifeos-initialize](skills/lifeos-initialize/SKILL.md) | Full setup from scratch with an intake interview: chief of staff, owner bots, routines, surfaces, check-ins, approvals, scorecards and a proposal loop. |
| [lifeos-health-fitness](skills/lifeos-health-fitness/SKILL.md) | Health habits, exercise, sleep, food and appointments. |
| [lifeos-money](skills/lifeos-money/SKILL.md) | Bills, budget, subscriptions, income tracking and financial deadlines. |
| [lifeos-partner](skills/lifeos-partner/SKILL.md) | Investing in your relationship: dates, rituals, reminders and thoughtful gestures. |
| [lifeos-parenting](skills/lifeos-parenting/SKILL.md) | A child's schedule, school, activities, development and family time. |
| [lifeos-career-earn](skills/lifeos-career-earn/SKILL.md) | Career goals, opportunities, visibility and side income. |
| [lifeos-work-projects](skills/lifeos-work-projects/SKILL.md) | Work projects, deadlines, meetings, follow-ups and status updates. |
| [lifeos-home](skills/lifeos-home/SKILL.md) | Household maintenance, chores, supplies, services and seasonal tasks. |
| [lifeos-social-outreach](skills/lifeos-social-outreach/SKILL.md) | Friendships and professional relationships: reminders, plans and drafted outreach. |
| [lifeos-learning](skills/lifeos-learning/SKILL.md) | Learning goals through reading, courses, practice and review. |

## Install

**1. One command** (detects Claude Code, Cursor, opencode, Codex and Grok; safe to rerun to update):

```bash
curl -fsSL https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/install.sh | bash
```

Install into a specific folder: `curl -fsSL https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/install.sh | bash -s -- --dir ~/.claude/skills` (or set `LIFEOS_SKILLS_DIR`).

With the open skills CLI (Node 22+): `npx skills add Deamoner/lifeos-skills -g -y`

In Claude Code: `/plugin marketplace add Deamoner/lifeos-skills` then `/plugin install lifeos@lifeos-skills`

**2. Or paste this link to your agent.** Say: "Install the LifeOS skills from https://github.com/Deamoner/lifeos-skills for yourself (follow AGENTS.md), then run lifeos-initialize with me." Instructions for the agent are in [AGENTS.md](AGENTS.md).

**3. Manual.** `git clone https://github.com/Deamoner/lifeos-skills.git` and copy the folders in `skills/` into your agent's skills folder:

| Agent | Global skills folder |
|---|---|
| Claude Code | `~/.claude/skills/` |
| Cursor | `~/.cursor/skills/` |
| opencode | `~/.config/opencode/skills/` |
| Codex and most others | `~/.agents/skills/` |

No skills folder? Paste a `SKILL.md` into your agent and ask it to save it as a skill.

**After install:** run `lifeos-initialize` first and answer its intake questions; it tells you which area skills to add next.

## How to grow it

1. Initialize with your chief of staff and one or two areas that matter most.
2. Engineer your touchpoints: a daily brief page, a phone number for texts and calls, a printer for nice things.
3. Keep iterating. Give the system more context and integrations as it proves it can handle them, and keep scorecards live on your daily brief.

## Maintaining this repo

- Skills live under `skills/<name>/SKILL.md`, with `name` and `description` front matter.
- Keep them generic and public-safe: no names, family details, accounts or private data.
- When you add or rename a skill, update the README skills table, `.claude-plugin/marketplace.json` and the raw links in `AGENTS.md`.

## License

MIT
