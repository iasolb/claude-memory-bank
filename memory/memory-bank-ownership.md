---
name: memory-bank-ownership
description: "claude-memory-bank is Claude's repo to commit in; every other repo is Ian's"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 91d37473-1098-4651-8d05-5a2d210ae14c
---

Ian's framing (2026-07-18): "think of it being your repository, and all other
repos are mine - you can touch that one but not mine." `~/claude-memory-bank`
is the one repo where Claude may run `git commit` (the SessionEnd hook stages
everything; Claude drafts the message from the staged diff). Push is Ian's
everywhere, no exceptions.

**Why:** the memory bank is meant to be a living document Claude maintains
across sessions and machines; requiring Ian to commit config/memory updates
would defeat that.

**How to apply:** keep CLAUDE.md, rules/, agents/, commands/, hooks/ in
`~/claude-memory-bank` current as things change, commit there freely with
clear messages, never commit in any other repo. Always `git pull` before
committing: Ian works on the PC concurrently and both machines push to the
same remote, so check for and carefully resolve merge conflicts rather than
assuming a clean fast-forward (his instruction, 2026-07-18). Full rule text
lives in `rules/git-github.md` in that repo. See [[mainframe-layout]].
