# Personal Claude Code config

Versioned subset of `~/.claude` — global instructions, settings, custom commands,
and agents. Everything here is meant to be portable across machines.

**Not stored here** (stays local/machine-specific, lives only in `~/.claude`):
`.credentials.json`, `sessions/`, `session-env/`, `shell-snapshots/`, `cache/`,
`downloads/`, `backups/`, `policy-limits.json`, `remote-settings.json`.

## Layout
- `CLAUDE.md` — global instructions, loaded in every session
- `settings.json` — permissions, hooks, env vars
- `commands/` — custom slash commands
- `agents/` — custom subagents

## Install
Run `install.ps1` from this directory. It symlinks each tracked file/folder into
`~/.claude`, so edits here take effect immediately and `git status` in `~/.claude`
never risks staging credentials or session state.
