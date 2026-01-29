<#
_Template.ps1
Shadow King Automation Pack - Routine Template

Purpose:
- A safe starter template for creating new routines.

Notes:
- Keep routines user-level.
- Prefer read-only checks first.
#>

[CmdletBinding()]
param(
    [switch]$WhatIf
)

$ErrorActionPreference = "Stop"

function Write-Header {
    param([string]$Title)
    Write-Host ""
    Write-Host "=== $Title ===" -ForegroundColor Cyan
    Write-Host ("Time: {0}" -f (Get-Date)) -ForegroundColor DarkGray
    Write-Host ""
}

function Write-Ok($msg)    { Write-Host $msg -ForegroundColor Green }
function Write-Warn($msg)  { Write-Host $msg -ForegroundColor Yellow }
function Write-Err($msg)   { Write-Host $msg -ForegroundColor Red }

try {
    Write-Header "Template Routine"

    # Example: read-only system info
    $computer = $env:COMPUTERNAME
    $user     = $env:USERNAME
    Write-Host ("Computer: {0}" -f $computer)
    Write-Host ("User: {0}" -f $user)

    # Example: do something optional
    if ($WhatIf) {
        Write-Warn "WhatIf enabled: no changes will be made."
    } else {
        Write-Ok "Routine ran successfully (no actions by default)."
    }

    exit 0
}
catch {
    Write-Err ("Routine failed: {0}" -f $_.Exception.Message)
    exit 1
}
