Write-Host "`n📘 LazyVim - First Time Usage Guide" -ForegroundColor Cyan

Write-Host "`n1. Open Neovim:"
Write-Host "   Run:" -ForegroundColor Gray
Write-Host "     nvim" -ForegroundColor Yellow

Write-Host "`n2. Run LazyVim Health Check:"
Write-Host "   Once inside Neovim, run the following command to check for any missing dependencies or warnings:" -ForegroundColor Gray
Write-Host "     :LazyHealth" -ForegroundColor Yellow

Write-Host "`n3. After running the above command, it's important to find 'warnings' or 'errors' in the output."
Write-Host "    So, inside the buffer that opens, type '/' and search for either 'warning' or 'error'."
Write-Host "    If you find any and you need them fixed, please, follow the instructions provided in the output."

Write-Host "`n4. Start exploring:"
Write-Host "   Press <Space> to open the LazyVim dashboard."
Write-Host "   From there, you can access plugins, keybindings, and recent files."

Write-Host "`n Remember! <Leader> = <Space>"

Write-Host "`n🧠 Useful Shortcuts:"
Write-Host " - <Leader> + f + f → Find files"
Write-Host " - <Leader> + p + s → Search plugins"
Write-Host " - <Leader> + l + i → Manage LSP servers"
Write-Host " - <Leader> + ?     → View all key mappings (which-key menu)"

Write-Host "`nGood luck — and welcome to the LazyVim workflow!"
