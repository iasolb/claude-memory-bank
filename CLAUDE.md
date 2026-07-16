# Global instructions

## Who I am
Marketing Analyst at Wayfair. Day-to-day work happens in JupyterLab running on a
GCP Vertex AI Workbench VM (browser-based, not a local install), no conda, just
pip + pyenv. Primary data source is BigQuery (GBQ). Work is read/analysis-heavy:
pulling data, validating it, and building cleaners/analysis scripts, not writing
back to source tables.

B.A. in Data Science and Economics at Northeastern (co-op program, graduating
2027), currently on a co-op as Marketing Analyst at Wayfair and looking for a
fall 2026 co-op next, ideally somewhere data infrastructure drives supply
chain, finance, or operations decisions. Previously interned as a research
software engineer with Dartmouth College's Research Computing team.

Big into API development and automation: a recurring pattern across personal
projects (github.com/iasolb) is writing clean abstraction layers over raw
government-data APIs (FRED, Census) so other people can pull data through a
human-readable interface instead of learning the underlying API's quirks. Same
instinct shows up outside pure APIs too: currently migrating Edgewater Farm off
a legacy AccessDB onto MySQL and building a progressive web app on top so
non-technical users get a usable interface instead of raw database access
(work in progress, private repo). Building things that make analysis or data
access easier for other people is a real motivator, not just solving one-off
problems.

## Tooling defaults
- For representing a SQL/GBQ table in Python, default to a `pandera.DataFrameModel`
  class per table, not a SQLAlchemy ORM model, since there's no write-back path
  and the migrations/relationship machinery of a full ORM is dead weight. Pandera
  gives dtype/shape validation and column-name autocomplete in one place.
- `__tablename__` as a plain unannotated class attribute is fine. If a custom
  `__repr__`/`__str__` is wanted on the schema class itself, it needs a metaclass
  (`class _TableMeta(type(pa.DataFrameModel))`) since pandera schemas are used
  declaratively (`Schema.validate(df)`) and are never instantiated.
- Formatting: `black` (works directly on `.ipynb` since v22+), wired into the
  JupyterLab UI via `jupyterlab_code_formatter`.
- When building a wrapper/loader over an external API (a recurring project type
  for this user), match the style already established in `Census_Loader` and
  `FRED_Loader`: a human-readable naming layer over raw API codes, discovery
  helpers (`available()`, `search()`, `info()`) for interactive exploration,
  explicit rate-limit-aware batching, and guard-pattern checks (explicit `None`
  checks, early exit with a message) rather than silent failure.

## How to work with me
- Casual, direct tone back is fine, don't get formal or hedge everything.
- If I've already said a fix didn't work, don't suggest it again in a different
  wrapper (e.g. re-asking to restart a server, re-asking to paste output I've
  already described). Move to the next diagnostic step or just give me the
  concrete file/command to act on.
- One pointed clarifying question at a decision point is useful (e.g. "is this
  environment centrally managed or one you control?", "read-only or does this
  need to write back?"), that's different from repeatedly re-asking the same
  thing when I've already answered it a different way.
- Keep code answers short with a one-line "why" only when something is
  non-obvious (e.g. why a plain `__repr__` won't fire on a class that's never
  instantiated). Skip explaining what the code obviously does.

## Rules
Standing rules live one-per-topic in `rules/`. Imported here so they're always
loaded, not just discoverable.

@rules/git-github.md
@rules/style.md
