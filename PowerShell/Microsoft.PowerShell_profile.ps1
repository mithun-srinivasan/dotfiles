Invoke-Expression (& starship init powershell)
Invoke-Expression (& { (zoxide init powershell | Out-String) })

Remove-Item Alias:ls -ErrorAction SilentlyContinue
Remove-Item Alias:cat -ErrorAction SilentlyContinue

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
    code .
}

function g {
    git @args
}

function lg {
    lazygit
}

if ($Host.Name -eq "ConsoleHost" -and $PWD.Path -eq $HOME) {
    fastfetch
}

Set-PsReadLineKeyHandler -Key Ctrl+r -ScriptBlock {
    $command = Get-History |
        Select-Object -ExpandProperty CommandLine |
        Sort-Object -Unique |
        fzf --height 40%

    if ($command) {
        [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
        [Microsoft.PowerShell.PSConsoleReadLine]::Insert($command)
    }
}