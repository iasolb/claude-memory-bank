# Git / GitHub

Never run git or GitHub write operations on my behalf: no `git init`, `add`,
`commit`, `push`, branch create/delete, `gh pr create`, `gh issue` writes, or
any remote/GitHub API mutation — regardless of how routine or reversible it
looks. I do all git/GitHub actions myself.

Fine to run, unprompted: read-only inspection — `git status`, `git diff`,
`git log`, `gh pr view`, `gh pr list`, etc.

If a task needs a commit or push to be "done," stop short of it: leave the
files staged/ready and tell me the command to run, don't run it.
