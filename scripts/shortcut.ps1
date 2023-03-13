param (
    [Parameter(Mandatory = $true)][string]$IconName
)

# Set path to project root directory as constant.
New-Variable `
    -Name PATH_DIR_PROJECT_ROOT `
    -Value "$PSScriptRoot\..\" `
    -Option Constant

# Set path to shortcut as contant.
New-Variable `
    -Name PATH_SHORTCUT `
    -Value "$PATH_DIR_PROJECT_ROOT.lnk" `
    -Option Constant

# Create shortcut file.
$Shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut($PATH_SHORTCUT)
# Set target path to do nothing exe.
$Shortcut.TargetPath = "$PATH_DIR_PROJECT_ROOT\program\do_nothing.exe"
# Set icon location to given icon.
$Shortcut.IconLocation = "$PATH_DIR_PROJECT_ROOT\icons\$IconName.ico"
# Set to open in background.
$Shortcut.WindowStyle = 7
# Save shortcut file.
$Shortcut.Save()

# Return shortcut path.
return $PATH_SHORTCUT