# For AI agents: how to install these skills

If a user gives you this repo link (https://github.com/Deamoner/lifeos-skills) and asks you to install it, install the 10 LifeOS skills for yourself, then run `lifeos-initialize` with the user.

Each skill is a folder `skills/<name>/SKILL.md` (YAML front matter with `name` and `description`, then Markdown instructions). Install all 10 folders unchanged.

## Step 1: try the one-liner (any agent with a shell)

```bash
curl -fsSL https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/install.sh | bash
```

It detects Claude Code, Cursor, opencode, Codex and Grok and copies the skills into each one's skills folder. To install into one specific folder instead:

```bash
curl -fsSL https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/install.sh | bash -s -- --dir <your-skills-dir>
```

Alternative (needs Node 22+): `npx skills add Deamoner/lifeos-skills -g -y`

## Step 2: if you need a specific location

| Agent | Global skills folder | Project skills folder |
|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` |
| Cursor | `~/.cursor/skills/` | `.agents/skills/` or `.cursor/skills/` |
| opencode | `~/.config/opencode/skills/` | `.agents/skills/` or `.opencode/skills/` |
| Codex | `~/.agents/skills/` | `.agents/skills/` |
| Other agents | your own skills folder, or `~/.agents/skills/` | |

Claude Code users can also use the plugin marketplace:
```
/plugin marketplace add Deamoner/lifeos-skills
/plugin install lifeos@lifeos-skills
```

## Step 3: fallback with no shell or no skills folder

Fetch each raw file and save it as a skill (or as a saved instruction / memory, if your agent has no skill system):

```
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-initialize/SKILL.md
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-career-earn/SKILL.md
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-health-fitness/SKILL.md
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-home/SKILL.md
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-learning/SKILL.md
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-money/SKILL.md
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-parenting/SKILL.md
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-partner/SKILL.md
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-social-outreach/SKILL.md
https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/skills/lifeos-work-projects/SKILL.md
```

Save each as `<skills-dir>/<name>/SKILL.md`, using the folder name from the URL.

## Step 4: after installing

1. Tell the user which folder(s) you installed into and that all 10 skills are there.
2. Reload skills if your agent needs it (new session or restart).
3. Run `lifeos-initialize` with the user: ask its intake questions in one sitting and accept "skip".
4. Recommend the one or two area skills it points to first, and start those.

Do not edit the skills during install, and never write the user's private answers back into this repo.
