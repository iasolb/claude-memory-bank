---
name: ssh-tooling-project
description: Ian wants a proper cross-machine filing/git pipeline built next, possibly tied to his existing SSH tooling system
metadata:
  type: project
---

Mentioned 2026-07-18 at the end of the Mac cleanup session: Ian "developed a
pretty cool ssh tooling system" that he wants to develop further, and the
development should happen on the PC, not the Mac. No details captured yet
(where it lives, what it does, stack); ask him about it at the start of the
next PC session and flesh this note out. Possibly related infrastructure:
the machine-to-machine SSH bridge in [[pc-ssh-access]] and the PC layout in
[[pc-layout]].

Follow-up 2026-07-18, end of the first PC session: Ian's stated next-session
goal is "a proper pipeline for filing things between systems locally and
git", i.e. moving beyond the ad hoc tar-over-ssh transfer used for the
Mac-to-PC offload (see [[pc-ssh-access]]) and the manual clone-and-hope used
to land EdgewaterDB here (see [[edgewater-state]]). Not yet clear whether
this is the same thing as his existing SSH tooling system, an evolution of
it, or a separate project. Open questions for next time: what does "filing"
mean here (a CLI, a scheduled sync, a manifest-driven copy tool?), does it
cover arbitrary dev repos or just specific ones, and how does it relate to
the claude-memory-bank symlink-based sync itself (see
[[memory-bank-ownership]]) which already solves this narrowly for Claude's
own config/memory.
