$scriptPath = $PSScriptRoot

function Prompt-And-Run {
    param (
        [string]$Message,
        [string]$Script
    )

    Write-Host ""
    $response = Read-Host "$Message [y/n]"
    if ($response -match '^[Yy]$') {
        Write-Host "▶ Running $Script..."
        & "$scriptPath\$Script"
    } else {
        Write-Host "⏭  Skipping $Script"
    }
}

Write-Host "🚀 Starting LazyVim Windows Environment Setup..."

# Install Scoop
Prompt-And-Run "Install Scoop?" "install-scoop.ps1"

# Install Neovim
Prompt-And-Run "Install Neovim?" "install-neovim.ps1"

# Install Tools
Prompt-And-Run "Install Tools?" "install-tools.ps1"

# Run setup config to check if everything is ok with Neovim config
Prompt-And-Run "Setup LazyVim Config?" "setup-config.ps1"

Write-Host "`n🎉 Setup complete!"
Write-Host "`n🦆 Well, you've actually done it. Nice."
Write-Host "`n If everything went well (and I'm sure it did)..." 
Write-Host "`n Run 'nvim' to start using it!"


Prompt-And-Run "Need help with starting?" "help.ps1"
