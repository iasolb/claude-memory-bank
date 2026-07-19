---
name: mac-filesystem-refactor
description: Next Mac project as of 2026-07-19, a full filesystem reorganization; not yet planned
metadata:
  type: project
---

Declared 2026-07-19, right after the memory-bank migration / machine-sync /
Xcode-purge session wrapped: Ian wants a full refactor of the MacBook's
filesystem, which he describes as "extremely unorganized for a long time."
Not yet scoped or planned, the conversation about shape and approach hasn't
happened.

Known starting points when it does: code already lives under
`~/Desktop/MAINFRAME` (see [[mainframe-layout]], reorganized 2026-07-18 but
only the code side), `~/claude` is the Claude workspace, SAMPLE CORE and
Music are untouchable (see [[mac-ableton-production]]), and bulk archive
offload to the PC's `D:\backups\` via machine-sync is a proven pattern (see
[[pc-ssh-access]], [[ssh-tooling-project]]). Likely candidates for the
actual mess: Desktop outside MAINFRAME, Downloads, Documents, home dir
clutter. Expect a planning-mode conversation first (his planning-mode rule),
delegating filesystem survey work to subagents to protect context.
