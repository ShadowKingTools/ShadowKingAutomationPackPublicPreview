# Safety Guide (Read First)

This automation pack runs PowerShell scripts that can close apps and launch apps. Use it responsibly.

## What these routines SHOULD do
- Close specific apps you choose (safe, user-level processes)
- Launch apps you choose (via Start menu / shortcuts / paths)
- Print clear logs to the terminal so you know what happened

## What these routines should NOT do
- Modify Windows registry without explicit warning
- Change system policies permanently
- Install drivers or services
- Touch encryption, BitLocker, security settings, or admin-only system areas

## Recommended best practices
1. **Run from the pack folder** (keeps relative paths consistent).
2. Use **ExecutionPolicy Bypass** only for running the pack (as designed).
3. Start with “safe starter” routines first.
4. Keep a restore routine (like RestoreLaptopMode) to return to your baseline.
5. If something feels wrong, **stop**, don’t keep rerunning.

## “Dry run” mindset
If you’re testing a new routine:
- First run it with **close actions only**
- Then add launches
- Then add any optional behavior

## Reporting issues
If a routine fails, capture:
- The routine name
- The error text
- Your Windows version
- Your device model
- What you expected vs what happened
