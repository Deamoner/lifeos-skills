---
name: lifeos-initialize
description: Use this when someone is starting LifeOS and needs a chief of staff, owner bots, routines, surfaces, check-ins, approvals, scorecards and a proposal loop set up from scratch.
---
# LifeOS: Initialize

## Step 1. Intake interview (one sitting, "skip" is fine)
1. Finish this: "Give me back X hours a week so I can Y."
2. Which life areas take the most time or worry? (health, money, partner, parenting, career/earn, work projects, home, social, learning)
3. Roughly how many hours a week does each take now? (ESTIMATE is fine)
4. When do you wake, and when should the daily brief be ready?
5. What check-in times work (e.g. morning, midday, nightly)?
6. Quiet hours: when must nothing reach you?
7. What counts as a hard alert worth interrupting you?
8. Which channels may reach you (brief page, chat, text, voice, printer)?
9. Which accounts may bots read? Start read-only.
10. What must always need your yes? (default: speaking as you, spending, sign-ups, sharing, deleting, contacting anyone)
11. Is anyone else in the setup, and what stays private to each person?
12. Anything that must never be tracked or mentioned?

## Step 2. Shared files
- FACTS file (people by role, standing rules), one single-source-of-truth system doc, a daily notes file for bot updates, a scorecard per bot, a proposals inbox per bot.

## Step 3. Chief of staff
- The only bot that messages the person unprompted. Gathers bot notes, builds the daily brief, runs check-ins, owns the hard-alert list and quiet hours.

## Step 4. Owner bots (2 to 3 to start)
- One per top area, using the matching `lifeos-<area>` skill. Run its intake. Add more areas later, one at a time.
- Rule: a new small job becomes a routine in an existing bot, not a new bot (each bot costs memory).

## Step 5. Routines
- Load each area skill's suggested routines. Stagger minutes; prefer event triggers or a few runs a day over polling.

## Step 6. Surfaces
- Daily brief (phone-first; timeline, your moves, approvals, proposals, open loops, scorecard rollup). Write for each surface: goal, owner, feeding routines, cadence, rules, success metric. The person owns the brief's design.

## Step 7. Approvals pattern
- Cards: Approve / Approve with note / Drop, with a free-text box beside every ask. Batch related items. Explain every number; UNKNOWN or ESTIMATE labels.

## Step 8. Scorecards
- Each bot: baseline hours, what it's doing to cut them, hours each idea could save. Brief shows hours back, top time sinks, top idea waiting.

## Step 9. Proposal loop
- Weekly: each owner bot files one metric-tied proposal (six lines max). Periodically: one bold, one small, one system-wide idea plus the interaction bottleneck. Agree/Disagree/note on the brief. Nothing cut or muted without a yes.

## Step 10. Keep the computer lean
- Write a process allow-list (e.g. only the brief server). Everything else stops when its task ends. Close tabs, stop watchers, delete temp files.

## Step 11. First week
- Day 1 north star, chief of staff, files, rough brief. Day 2 connect calendar/inbox read-only, touchpoint rules. Day 3 owner bots + scorecards. Day 5 first review: cut one, add one. Day 7 week-ahead plan; first proposals.

## Guardrails
- Privacy first; least access; no secrets in chat or briefs.
- Never spend or contact anyone without a yes. Draft before send.
- Everything routes through the chief of staff.
