# Contributing

Thanks for helping improve ShadowKingAutomationPack.

## Ground rules
- Keep routines **safe and user-level**
- Prefer **read-only checks** unless a change is clearly intended
- Never add anything that requires admin without clearly labeling it

## Code style
- Use `CmdletBinding()` and `param()` when helpful
- Prefer clear variable names
- Use Write-Host with consistent colors for status:
  - Cyan: info
  - Yellow: warnings
  - Green: success
  - Red: errors

## Routine requirements
Every routine should:
1. Print a clear header (routine name + timestamp)
2. Validate any paths before use
3. Exit with `exit 0` on success (or non-zero on failure)
4. Avoid destructive actions

## Submitting changes
- Small PRs are best
- Include a short summary and testing notes
- Update CHANGELOG if behavior changes
