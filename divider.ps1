# Generate shortcut and get path.
$path = ."$PSScriptRoot\scripts\shortcut.ps1" -IconName divider

# Output path.
Write-Output "Shortcut for divider created: $path"

# Output next steps.
Write-Output "Move it to safe location and pin it to taskbar."