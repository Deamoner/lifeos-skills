#!/usr/bin/env bash
# LifeOS skills installer.
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/install.sh | bash
#   curl -fsSL https://raw.githubusercontent.com/Deamoner/lifeos-skills/main/install.sh | bash -s -- --dir ./my/skills
# Options:
#   --dir DIR   install only into DIR (or set LIFEOS_SKILLS_DIR=DIR)
#   --ref REF   branch or tag to install from (default: main, or LIFEOS_SKILLS_REF)
# Safe to run again: each lifeos-* skill folder is replaced with the latest copy.
set -euo pipefail

REPO="Deamoner/lifeos-skills"
REF="${LIFEOS_SKILLS_REF:-main}"
TARGET="${LIFEOS_SKILLS_DIR:-}"

while [ $# -gt 0 ]; do
  case "$1" in
    --dir) TARGET="$2"; shift 2 ;;
    --dir=*) TARGET="${1#*=}"; shift ;;
    --ref) REF="$2"; shift 2 ;;
    --ref=*) REF="${1#*=}"; shift ;;
    -h|--help) sed -n '2,10p' "$0" 2>/dev/null || true; exit 0 ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# Use local skills/ when run from a clone, otherwise download the repo.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || echo "")"
if [ -n "$SCRIPT_DIR" ] && [ -d "$SCRIPT_DIR/skills/lifeos-initialize" ]; then
  SRC="$SCRIPT_DIR/skills"
else
  echo "Downloading $REPO@$REF ..."
  curl -fsSL "https://codeload.github.com/$REPO/tar.gz/$REF" | tar -xz -C "$TMP"
  SRC="$(find "$TMP" -mindepth 2 -maxdepth 2 -type d -name skills | head -n1)"
fi
[ -d "$SRC" ] || { echo "Could not find skills/ folder" >&2; exit 1; }

DIRS=()
if [ -n "$TARGET" ]; then
  DIRS+=("$TARGET")
else
  [ -d "$HOME/.claude" ] && DIRS+=("$HOME/.claude/skills")             # Claude Code
  [ -d "$HOME/.cursor" ] && DIRS+=("$HOME/.cursor/skills")             # Cursor
  [ -d "$HOME/.config/opencode" ] && DIRS+=("$HOME/.config/opencode/skills") # opencode
  { [ -d "$HOME/.codex" ] || [ -d "$HOME/.agents" ]; } && DIRS+=("$HOME/.agents/skills") # Codex and other .agents readers
  [ -d "$HOME/.grok" ] && DIRS+=("$HOME/.grok/skills")                 # Grok
  [ ${#DIRS[@]} -eq 0 ] && DIRS+=("$HOME/.agents/skills")              # default
fi

for d in "${DIRS[@]}"; do
  mkdir -p "$d"
  n=0
  for s in "$SRC"/*/; do
    name="$(basename "$s")"
    [ -f "$s/SKILL.md" ] || continue
    rm -rf "${d:?}/$name"
    cp -R "$s" "$d/$name"
    n=$((n+1))
  done
  echo "Installed $n skills into $d"
done

cat <<'MSG'

Done. Next steps:
  1. Restart your agent (or open a new session) so it loads the skills.
  2. Ask it: "Run the lifeos-initialize skill."
  3. Answer the intake questions (say "skip" for any you want to leave).
  4. Add the area skills it recommends, one or two at a time.
MSG
