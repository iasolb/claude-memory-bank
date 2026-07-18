---
name: research-tools-state
description: FRED_Loader and ResearchFramework have uncommitted work; ResearchFramework is mid-refactor
metadata: 
  node_type: memory
  type: project
  originSessionId: 91d37473-1098-4651-8d05-5a2d210ae14c
---

As of 2026-07-18, in `Personal/Code/`:

- **FRED_Loader**: last commit 2026-04-07, dirty (modified requirements.txt,
  untracked .claude/). The canonical house-style wrapper (series.py is the
  naming layer). README is two lines despite being a reference project for
  the api-wrapper-reviewer agent.
- **ResearchFramework**: last commit 2026-04-07 "rename and cleanup", dirty
  (8 files including rh.py and all three examples). Mid-refactor:
  ResearchHandler.py was renamed to rh.py but the README still references the
  old name; simulation.py (1438 lines, Monte Carlo) is the center of gravity;
  there is an experimental lone `src/transforms.rs` Rust port outside the
  documented layout.
- **FRED_DebtAnalysis**: clean, dormant since 2026-04-02, pulls
  ResearchFramework as a git submodule. README is one line.
- **CensusTestingEnv**: dormant sandbox holding a vendored copy of
  Census_Loader (not a submodule, can drift from the canonical repo).

Ian runs all commits in these repos, see [[memory-bank-ownership]].
