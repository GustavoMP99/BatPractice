# Get the current date in YYMMDD format and the computer's name in lowercase

$currentDate = Get-Date -Format "yyMMdd"
$computerName = $env:COMPUTERNAME.ToLower()
# Define the output file path on the desktop with the desired naming convention
$OutputFile = Join-Path -Path $env:USERPROFILE -ChildPath "Desktop\installed-programs-$currentDate-$computerName.txt"
# Get a list of all installed packages, focusing on "msi" and "Programs" for applications
$installedPackages = Get-Package | Where-Object { $_.ProviderName -eq "msi" -or $_.ProviderName -eq "Programs" } | Sort-Object Name
# Format the output to only include the program name and version
$formattedOutput = $installedPackages | ForEach-Object {
    $displayName = $_.Name.Trim()
    $version = $_.Version
    "$displayName`t$version"
}
# Add a header to the output for clarity
$header = "Name`tVersion"
$formattedOutput = $header, $formattedOutput
# Output the formatted list to a file
$formattedOutput | Out-File -FilePath $OutputFile -Encoding UTF8
Write-Host "The list of installed programs has been saved to $OutputFile"
# Ensure the script exits cleanly
$host.SetShouldExit(0)