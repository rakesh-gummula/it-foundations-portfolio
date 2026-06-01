<#
.SYNOPSIS
Automated Backup Script
.DESCRIPTION
Compresses a target directory, saves it to a backup location with a timestamp, and logs the outcome.
#>

# Define your paths
$sourceDir = "C:\ImportantData"
$backupDir = "D:\Backups"

# Create a timestamp for the file name
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$destination = "$backupDir\Backup_$timestamp.zip"
$logFile = "$backupDir\backup_log.txt"

Try {
    # Ensure the backup destination directory exists
    If (!(Test-Path $backupDir)) {
        New-Item -ItemType Directory -Force -Path $backupDir | Out-Null
    }

    # Compress the source folder into a ZIP file
    Compress-Archive -Path "$sourceDir\*" -DestinationPath $destination -Force
    
    # Log success
    $successMessage = "$(Get-Date): SUCCESS - Backed up $sourceDir to $destination"
    Add-Content -Path $logFile -Value $successMessage
    Write-Host "Backup Successful." -ForegroundColor Green
}
Catch {
    # Log failure
    $errorMessage = "$(Get-Date): ERROR - Failed to backup. Details: $_"
    Add-Content -Path $logFile -Value $errorMessage
    Write-Host "Backup Failed. Check log." -ForegroundColor Red
}
