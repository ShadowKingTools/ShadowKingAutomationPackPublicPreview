# Logging + Exit Codes (Public Preview)

This public preview includes a safe sample routine that demonstrates:
- a simple log file (`/logs/*.log`)
- a PowerShell transcript (`/logs/*.transcript.txt`)
- consistent exit codes

## Why both a log + transcript?
- **Log**: concise, easy to scan, can be used by a launcher/runner later
- **Transcript**: captures everything printed to the console for troubleshooting

## Exit codes
- `0` = success
- `1` = failure (safe catch-all for now)

## Try it
Run success:
```powershell
./samples/SampleRoutine-LoggingTemplate.ps1
