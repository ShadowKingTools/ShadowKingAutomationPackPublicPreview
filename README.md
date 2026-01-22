# ShadowKingAutomationPackPublicPreview

Public preview of a **PowerShell-first “routine launcher”** concept: safe sample routines + docs.

## What this is
A small framework for running **user-triggered routines** to make Windows handheld/PC setup repeatable (session prep, performance mode workflow, cleanup, restore baseline pattern).

## What this Public Preview includes
- ✅ Docs in `/docs`
- ✅ Safe sample routines in `/samples` (**no system tweaks**)
- ✅ No background services
- ✅ No telemetry
- ✅ Everything readable in scripts/docs

## What this does NOT include
- ❌ The full private/buyer routine pack
- ❌ Any aggressive tweaks (registry edits, undervolt/overclock, hidden services, etc.)

## Quick Start (safe sample)
1. Code → **Download ZIP**
2. Unzip
3. Open PowerShell in the folder
4. Run:
   ```powershell
   ./samples/SampleRoutine-Hello.ps1
