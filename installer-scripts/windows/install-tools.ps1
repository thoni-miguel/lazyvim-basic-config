# List of tools to install, please, change accordingly to your needs
$tools = @(
    "ripgrep",   # Fast file search (used by Telescope)
    "fd",        # Simple, fast file finder
    "fzf",       # Fuzzy finder
    "lazygit",    # TUI Git interface
    "gcc"
)

Write-Host "`n🛠 The following tools will be checked and installed via Scoop if missing:`n"

foreach ($tool in $tools) {
    Write-Host "  • $tool"
}

Write-Host "`nRemember, you can always go to the '$PSScriptRoot' folder and change which tools you'd like to install with Scoop in the 'install-tools.ps1' script."

$response = Read-Host "`nDo you want to continue with installing these tools? [y/n]"

if ($response -notmatch '^[Yy]$') {
    Write-Host "⏭  Skipping tool installation."
    return
}

# Add scoop 'extras' bucket if missing. This one is necessary for lazygit, and probably for other future tools as well!
if (-not (scoop bucket list | Select-String "extras")) {
    Write-Host "Adding Scoop 'extras' bucket..."
    scoop bucket add extras
}

foreach ($tool in $tools) {
    if (-not (scoop list $tool -ErrorAction SilentlyContinue)) {
        Write-Host "🟢 Installing $tool..."
        scoop install $tool
    } else {
        Write-Host "✅ $tool already installed."
    }
}
