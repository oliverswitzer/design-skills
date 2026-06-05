#!/bin/bash
set -e

BASE="https://raw.githubusercontent.com/pbakaus/impeccable/main/skill"
SKILL_DIR="$(dirname "$0")/../impeccable"

echo "Fetching Impeccable skill files..."

mkdir -p "$SKILL_DIR/skill" "$SKILL_DIR/references"

curl -sfL "$BASE/SKILL.src.md" -o "$SKILL_DIR/skill/SKILL.md"
echo "✓ SKILL.md"

for cmd in adapt animate audit bolder brand clarify codex colorize craft \
           critique delight distill document extract harden init \
           interaction-design layout live onboard optimize overdrive \
           polish product quieter shape typeset; do
  curl -sfL "$BASE/reference/${cmd}.md" -o "$SKILL_DIR/references/${cmd}.md"
  echo "✓ references/${cmd}.md"
done

SHA=$(curl -sf https://api.github.com/repos/pbakaus/impeccable/commits/main | jq -r '.sha')
echo "$SHA" > "$SKILL_DIR/.impeccable-sha"

echo ""
echo "Done. Synced to ${SHA:0:7}"
echo "Run 'git add impeccable/ && git commit -m \"chore: sync impeccable to ${SHA:0:7}\"' to commit."
