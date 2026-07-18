---
name: financialedge-brain-state
description: FinancialEdgeConnector deployed June 2026 (one loose script); BRAIN dashboard live on HF Spaces since May 2026
metadata: 
  node_type: memory
  type: project
  originSessionId: 91d37473-1098-4651-8d05-5a2d210ae14c
---

As of 2026-07-18:

- **FinancialEdgeConnector** (`Work/TallPoppies/`): deployed to the Oracle
  Cloud VM, main synced with origin, last commits 2026-06-15 ("set up for
  deployment"). Only loose end: untracked `scrape_accounts.py`. Config-driven
  (accounts.csv, maintainers.toml, scenarios.toml), hand-written
  `sky_endpoints.md` curl catalog per the no-Postman rule. Remember this
  project is hand-hold-only: guide, don't implement. `app_reference/` (cred
  notes, SSH one-liner, secrets txt) is gitignored and was never committed
  in any branch (verified 2026-07-18), so it's local-disk only, no git
  exposure, nothing to fix. The plaintext app secret there is fine where it
  is per Ian (2026-07-18), don't re-raise.
- **BRAIN / Chiari dashboard** (`School/labs+research/Chiari Malformation/`):
  deployment repo synced to huggingface.co/spaces/iasolb/BRAIN, clean, last
  commits 2026-05-20 shipping real Loth Lab datasets (synthetic-data demo
  path removed). Predecessor `Chiari Dataview` repo (github.com/iasolb/
  ChiariDataview, dirty, last commit 2025-10-30) is superseded.

See [[mainframe-layout]].
