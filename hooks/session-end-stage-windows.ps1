# SessionEnd hook: stage (never commit or push) any pending changes in the
# personal claude-memory-bank repo, and notify if anything got staged.

$repo = Join-Path $HOME "claude-memory-bank"
if (-not (Test-Path (Join-Path $repo ".git"))) {
    exit 0
}

Push-Location $repo
git add -A
$staged = git diff --cached --name-only
Pop-Location

if (-not $staged) {
    exit 0
}

Add-Type -AssemblyName System.Windows.Forms
$notify = New-Object System.Windows.Forms.NotifyIcon
$notify.Icon = [System.Drawing.SystemIcons]::Information
$notify.Visible = $true
$notify.BalloonTipTitle = "Claude Code"
$notify.BalloonTipText = "Changes staged in claude-memory-bank, ready to review"
$notify.ShowBalloonTip(4000)
Start-Sleep -Seconds 3
$notify.Dispose()
