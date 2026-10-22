# ============================================
#  PowerShell 7 profile
#  https://github.com/mithun-srinivasan/dotfiles
# ============================================

Invoke-Expression (& starship init powershell)
Invoke-Expression (& { (zoxide init powershell | Out-String) })

if (Test-Path Alias:ls)  { Remove-Item Alias:ls  -Force }
if (Test-Path Alias:cat) { Remove-Item Alias:cat -Force }

function ls {
    eza --icons @args
}

function ll {
    eza -lah --icons @args
}

function lt {
    eza --tree --icons @args
}

function cat {
    bat --paging=never @args
}

function cls {
    Clear-Host
}

function c {
    code . @args
}

function g {
    git @args
}

function lg {
    lazygit
}

function neovim {
    nvim @args
}

if ($Host.Name -eq "ConsoleHost" -and $PWD.Path -eq $HOME) {
    fastfetch
}

Set-PsReadLineKeyHandler -Key Ctrl+r -ScriptBlock {
    $command = Get-History |
        Select-Object -ExpandProperty CommandLine |
        Sort-Object -Unique |
        fzf --height 40% --reverse

    if ($command) {
        [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
        [Microsoft.PowerShell.PSConsoleReadLine]::Insert($command)
    }
}
