# Resolve PowerShell Blocking the Scripts

If your administrator-level PowerShell is preventing you from executing one or more scripts, do:
`Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`