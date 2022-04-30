[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# syntax & intellisense
$PSReadLineOptions = @{

    PredictionSource = "HistoryAndPlugin"
    PredictionViewStyle = "ListView"
    ShowToolTips = $true
    EditMode = "Windows"

    Colors =  @{
        # main
        Default            = [ConsoleColor]::White
        Command            = [ConsoleColor]::Green
        Emphasis           = [ConsoleColor]::Green
        Error              = [ConsoleColor]::Red
        Comment            = "#928374"
        # data types
        Type               = [ConsoleColor]::Magenta
        String             = [ConsoleColor]::Yellow
        Number             = [ConsoleColor]::Blue
        Operator           = [ConsoleColor]::Blue
        Member             = [ConsoleColor]::White
        # vars & args
        Variable           = [ConsoleColor]::Magenta
        Parameter          = [ConsoleColor]::Cyan
        # prediction
        ListPrediction     = [ConsoleColor]::Magenta
    }
}
Set-PSReadLineOption @PSReadLineOptions

# aliases
Set-Alias -Name ls -Value ls.exe
Set-Alias -Name grep -Value ugrep.exe

# prompt
 oh-my-posh --init --shell pwsh --config "$HOME\AppData\scoop\apps\oh-my-posh\current\themes.original\amro.omp.json" | Invoke-Expression

# env
& "$HOME/.config/pwsh/.env.ps1"

# conda
 (& "$HOME\miniconda3\Scripts\conda.exe" "shell.powershell" "hook") | echo | iex