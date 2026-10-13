# LifeOS Skills

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

Each skill is a folder with a `SKILL.md`. Any agent that supports skill files (Grok Bot, Claude Code, Cursor, opencode and similar) can use them.

```bash
git clone https://github.com/Deamoner/lifeos-skills.git
```

Then either copy the folders from `skills/` into your agent's skills directory, or paste a `SKILL.md` into your agent and ask it to save it as a skill. Run `lifeos-initialize` first and answer its intake questions; it tells you which area skills to add next.

## How to grow it

1. Initialize with your chief of staff and one or two areas that matter most.
2. Engineer your touchpoints: a daily brief page, a phone number for texts and calls, a printer for nice things.
3. Keep iterating. Give the system more context and integrations as it proves it can handle them, and keep scorecards live on your daily brief.

## License

MIT
