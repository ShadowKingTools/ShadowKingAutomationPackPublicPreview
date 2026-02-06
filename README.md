# ShadowKingAutomationPackPublicPreview
Last updated: 2/3/2026
Public preview of a **PowerShell-first “routine launcher”** concept: safe samples + docs.

This repo is intentionally **safe-by-default**: no background services, no telemetry, and **no system-tweaking** routines in the public preview.

---

## Quick Links
- 🚀 Quick Start: `docs/QuickStart.md`
- 🧾 Logging & Exit Codes: `docs/LoggingAndExitCodes.md`
- 🛡️ Safety: `docs/SAFETY.md`
- 🧩 Samples (safe routines): `samples/`
- 🧪 Routine Template: `routines/_Template.ps1`
- 📌 Changelog: `CHANGELOG.md`
- 🤝 Contributing: `CONTRIBUTING.md`
- 🔐 Security: `SECURITY.md`

---

## What this is
A small framework for running **user-triggered routines** to make Windows handheld/PC setup repeatable
(session prep, workflow mode switching patterns, cleanup, restore-baseline patterns).

The goal is **clarity + control**:
- You run it manually (no hidden automation)
- Every action is readable in PowerShell
- Output is logged and uses consistent exit codes

---

## What this Public Preview includes
- ✅ Docs in `/docs`
- ✅ Safe sample routines in `/samples` (**no system tweaks**)
- ✅ Routine template in `/routines`
- ✅ No background services
- ✅ No telemetry
- ✅ Everything readable in scripts/docs

---

## What this does NOT include
- ❌ The full private/buyer routine pack (device-specific workflows, optional app control, deeper tuning logic)
- ❌ Aggressive tweaks (registry edits, undervolt/overclock, hidden services, etc.)

---

## Repo layout
- `docs/` — documentation
- `samples/` — **safe** sample routines (public preview)
- `routines/` — routine slots + template (public preview)
- `RunPack.ps1` / `RunPack.bat` — pack launcher entrypoints
- `SessionPrep.ps1` — safe starter routine (public preview)
- `CleanupSession.ps1` — safe cleanup routine (public preview)
- `RestoreBaseline.ps1` — safe restore pattern (public preview)

> Note: The public preview focuses on safe examples + structure.  
> The private/buyer pack contains additional routines (including LaptopMode/RestoreLaptopMode patterns).

---

## Who this is for

This pack is for users who want:
- Manual, transparent control (no hidden automation)
- Repeatable workflows for Windows handhelds / PCs
- Scripts they can read, modify, and trust

This is **not** a one-click optimizer or "set-and-forget" tuning tool.
it is a framework you run intentionally.
This project prioritizes long-term system trust over short-term performance gains.

## Quick Start (safe sample)
1. Click **Code → Download ZIP**
2. Unzip to a folder (example: `C:\ShadowKingPreview\`)
3. Open PowerShell **in that folder**
4. Run a safe sample:
   ```powershell
   powershell -NoProfile -ExecutionPolicy Bypass -File .\samples\SampleRoutine-Hello.ps1

## 💼 Get the Full Version (Paid v1.1+)

The full Automation Pack includes:

✅ Laptop Mode  
✅ One-click Restore  
✅ Performance Profiles  
✅ Launcher  
✅ Priority Updates  

Includes full docs + safety restore + all profiles.

👉 Buy the full version (v1.1+) here: https://shadowking73.gumroad.com/l/wgzwo
