$targetConfigPath = "$env:USERPROFILE\AppData\Local\nvim"
$expectedGitPath = "$targetConfigPath\.git"

Write-Host "🔍 Verifying LazyVim config location..."

if (-not (Test-Path $targetConfigPath)) {
    Write-Host "❌ Neovim config folder not found at: $targetConfigPath"
    Write-Host "Make sure you cloned the repo into that location."
    return
}

if (-not (Test-Path $expectedGitPath)) {
    Write-Host "It doesn't look like this is your LazyVim Git repo."
    Write-Host "Expected a .git folder inside: $targetConfigPath"
    return
}

if (-not (Test-Path "$targetConfigPath\.git")) {
    $backupPath = "$env:USERPROFILE\AppData\Local\nvim-backup-$(Get-Date -Format 'yyyyMMddHHmmss')"
    Rename-Item -Path $targetConfigPath -NewName $backupPath
    Write-Host "Backed up existing Neovim config to: $backupPath"
}

Write-Host "🔄 Running Neovim headless plugin sync..."
nvim --headless "+Lazy! sync" +qa

Write-Host "✅ Neovim config verified and plugins are syncing."
