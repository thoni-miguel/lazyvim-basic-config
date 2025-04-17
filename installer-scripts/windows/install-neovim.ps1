if (-not (Get-Command nvim -ErrorAction SilentlyContinue)) {
    Write-Host "🟢 Neovim not found. Installing with Scoop..."
    scoop install neovim
} else {
    Write-Host "✅ Neovim is already installed."
}