# Symlinks this repo's tracked config into ~/.claude.
# Run from this directory. Existing targets are backed up with a .bak suffix
# before being replaced, never silently overwritten.

$repoRoot = $PSScriptRoot
$claudeDir = Join-Path $env:USERPROFILE ".claude"

$items = @("CLAUDE.md", "settings.json", "commands", "agents")

foreach ($item in $items) {
    $source = Join-Path $repoRoot $item
    $target = Join-Path $claudeDir $item

    if (Test-Path $target) {
        $isSymlink = (Get-Item $target -Force).LinkType -eq "SymbolicLink"
        if ($isSymlink) {
            Remove-Item $target -Force
        } else {
            Move-Item $target "$target.bak" -Force
            Write-Host "Backed up existing $item to $item.bak"
        }
    }

    New-Item -ItemType SymbolicLink -Path $target -Target $source -Force | Out-Null
    Write-Host "Linked $item"
}
