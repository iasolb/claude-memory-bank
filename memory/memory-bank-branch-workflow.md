---
name: memory-bank-branch-workflow
description: Per-machine branches (windows/mac) with Claude-run merge/commit/push; both machines migrated as of 2026-07-19
metadata:
  type: project
---

Set up 2026-07-19 on the PC (Ian's design: per-machine branches so pushes
never collide and Claude sorts out merges itself). The PC checkout lives on
`windows` permanently. SessionStart hooks (`session-start-sync-windows.ps1`
/ `-mac.sh`) run doctor checks (memory symlink resolves into the repo,
correct branch, stale paths) then fetch and merge the other machine's branch
plus legacy `master` during the transition. Conflicts are Claude's to
resolve on the spot: keep both sides' facts, dedupe MEMORY.md. Claude has
full git autonomy in this repo only (merge, commit, push), scoped allows in
settings.json; full policy in `rules/git-github.md`. `master` is dormant,
never commit to it.

Mac migration completed 2026-07-19: the repo lives at
`~/claude/claude-memory-bank` (Ian mirrored the PC's `~/claude` layout,
including `~/claude/session/{context,working,outputs}` and myToolBox), the
`mac` branch was created off the `windows` tip and pushed, and
`install/mac.sh` was re-run so all `~/.claude` symlinks and the memory
symlink point at the new path. Both machines now live on their own branch.
The machine-sync Mac install happened the same session, see
[[ssh-tooling-project]].
