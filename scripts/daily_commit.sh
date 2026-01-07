#!/usr/bin/env bash
set -euo pipefail

REPO="$HOME/financial-architecture-notes"
cd "$REPO"

# Example: create a simple daily log entry (you can change the target file)
TODAY="$(date +%F)"
FILE="notes/00-orientation/daily-log.md"

mkdir -p "$(dirname "$FILE")"

if [ ! -f "$FILE" ]; then
  cat > "$FILE" <<EOF
# Daily Log

This file exists to keep a consistent daily commit trail.
Each day adds a timestamped entry.
EOF
fi

echo "- ${TODAY}: progress checkpoint" >> "$FILE"

git add -A
if git diff --cached --quiet; then
  exit 0
fi

git commit -m "Daily: ${TODAY}"
git push origin main
