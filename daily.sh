#!/usr/bin/env bash
set -e

# -------- CONFIG --------
SECTION="notes/02-ledger-design"
DATE_PREFIX=$(date +"%Y-%m-%d")
DAY_TITLE="$1"

if [ -z "$DAY_TITLE" ]; then
  echo "❌ Usage: ./daily.sh \"Day XX: title here\""
  exit 1
fi

# Convert title to filename
FILENAME=$(echo "$DAY_TITLE" \
  | tr '[:upper:]' '[:lower:]' \
  | sed 's/[^a-z0-9 ]//g' \
  | sed 's/ /-/g')

FILEPATH="$SECTION/$FILENAME.md"

# -------- EXECUTION --------
echo "📂 Syncing repository..."
git pull --rebase origin main

echo "📄 Creating file: $FILEPATH"
mkdir -p "$SECTION"

if [ -f "$FILEPATH" ]; then
  echo "⚠️ File already exists: $FILEPATH"
else
  cat <<EOF > "$FILEPATH"
# $DAY_TITLE

_Date: $(date +"%B %d, %Y")_

<!-- Write today’s note here -->

EOF
fi

echo "📝 Opening editor..."
nano "$FILEPATH"

echo "📦 Staging changes..."
git add "$FILEPATH"

echo "🧾 Committing..."
git commit -m "$DAY_TITLE"

echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Done: $DAY_TITLE"
