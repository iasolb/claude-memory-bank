#!/bin/bash
# SessionEnd hook: stage (never commit or push) any pending changes in the
# personal claude-memory-bank repo, and notify if anything got staged.
# macOS only, self-guards and no-ops everywhere else, mirrors notify-mac.sh.

if [[ "$(uname)" != "Darwin" ]]; then
    exit 0
fi

REPO="$HOME/claude-memory-bank"
[[ -d "$REPO/.git" ]] || exit 0

cd "$REPO" || exit 0
git add -A

if git diff --cached --quiet; then
    exit 0
fi

osascript -e 'display notification "Changes staged in claude-memory-bank, ready to review" with title "Claude Code"' 2>/dev/null || true
exit 0
