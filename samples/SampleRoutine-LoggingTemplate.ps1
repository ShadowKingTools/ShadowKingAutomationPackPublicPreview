<# 
SampleRoutine-LoggingTemplate.ps1
Safe sample: demonstrates logging + exit codes only (no system changes).
#>

[CmdletBinding()]
param(
  [string]$LogDir = "$PSScriptRoot\..\logs",
  [switch]$FailDemo
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function New-RunId {
  (Get-Date).ToString("yyyyMMdd-HHmmss")
}

function Ensure-Dir([string]$Path) {
  if (-not (Test-Path -LiteralPath $Path)) {
    New-Item -ItemType Directory -Path $Path | Out-Null
  }
}

$runId = New-RunId
Ensure-Dir $LogDir

$logPath = Join-Path $LogDir "sample-$runId.log"
$transcriptPath = Join-Path $LogDir "sample-$runId.transcript.txt"

# Write a simple log line (human readable)
"[$(Get-Date -Format o)] START runId=$runId user=$env:USERNAME host=$env:COMPUTERNAME" | Out-File -FilePath $logPath -Encoding utf8

# Transcript captures all console output
Start-Transcript -Path $transcriptPath -Force | Out-Null

try {
  Write-Host "Sample routine running. This routine does not change any system settings."
  Write-Host "Log: $logPath"
  Write-Host "Transcript: $transcriptPath"

  if ($FailDemo) {
    throw "FailDemo switch was provided. Demonstrating non-zero exit code."
  }

  # Simulate work
  Start-Sleep -Seconds 1

  "[$(Get-Date -Format o)] OK runId=$runId" | Out-File -FilePath $logPath -Append -Encoding utf8
  exit 0
}
catch {
  $msg = $_.Exception.Message
  Write-Error $msg
  "[$(Get-Date -Format o)] ERROR runId=$runId message=$msg" | Out-File -FilePath $logPath -Append -Encoding utf8
  exit 1
}
finally {
  Stop-Transcript | Out-Null
}
