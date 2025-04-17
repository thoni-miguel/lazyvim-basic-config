if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "🟢 Scoop not found. Installing..."
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    irm get.scoop.sh | iex
} else {
    Write-Host "✅ Scoop is already installed."
}