if ($PSVersionTable.PSVersion.Major -ge 7) {
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/powerlevel10k_lean.omp.json" | Invoke-Expression
    
    # Define the modules you want to check and install if missing
    $modules = @("PSFzf", "PSReadLine", "ZLocation")

    foreach ($module in $modules) {
        if (!(Get-Module -ListAvailable -Name $module)) {
            Install-Module -Name $module -Scope CurrentUser -Force -AllowClobber
        }
    }

    # Import the modules
    Import-Module PSFzf
    Import-Module PSReadLine
    Import-Module ZLocation

    # Configure PSReadLine key handlers and other options
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
    Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineOption -EditMode Emacs
    Set-PSReadLineOption -PredictionSource History
    $PSStyle.FileInfo.Directory = "`e[34m"

    # Configure PSFzf options
    Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
} else {
    Write-Output "PowerShell version is below 7. Skipping profile load."
}
