# set Powershell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
Import-Module posh-git
Import-Module oh-my-posh

# Setup Theme
Set-PoshPrompt night-owl

# Load prompt config [Takuya Matsuyama | devaslife | craftzdog]
#$omp_config = Join-Path $PSScriptRoot ".\BLS.omp.json"
#oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Icons
Import-Module -Name Terminal-Icons

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
