# ⚡ powershell-scripts

> A growing collection of PowerShell scripts for IT support tasks — system diagnostics, network checks, disk management, and user administration.
>
> Built from real IT support scenarios. Every script is documented with usage instructions and sample output.

---

## 📂 Script index

### 🖥️ System information

| Script | Description | Usage |
|---|---|---|
| [Get-SystemInfoReport.ps1](system-info/Get-SystemInfoReport.ps1) | Generates a clean system info report — OS, hardware, BIOS, disk space, and services summary | `.\Get-SystemInfoReport.ps1` |

---

### 💾 Disk management
*Coming soon*

---

### 🌐 Network
*Coming soon*

---

### ⚙️ Services
*Coming soon*

---

## 🚀 How to run these scripts

**Step 1 — Open PowerShell as Administrator**
```
Start menu → search "PowerShell" → right-click → Run as Administrator
```

**Step 2 — Allow script execution (first time only)**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**Step 3 — Navigate to the script folder**
```powershell
cd C:\path\to\where\you\saved\the\script
```

**Step 4 — Run the script**
```powershell
.\Get-SystemInfoReport.ps1
```

---

## 🛠️ Requirements

| Requirement | Minimum version |
|---|---|
| PowerShell | 5.1 (Windows built-in) or 7.x (recommended) |
| OS | Windows 10 / Windows 11 |
| Privileges | Standard user for most scripts — Administrator noted where required |

> These scripts are tested on PowerShell 7.6.0 running on Windows 10 Pro.

---

## 📋 Script structure

Every script in this repo follows a consistent format:

```powershell
# ============================================================
# Script:  ScriptName.ps1
# Author:  Tanya Jimu
# Date:    [Date]
# Purpose: What the script does
# Usage:   How to run it
# ============================================================
```

---

## 👩‍💻 About

Built by **Tanya Jimu** — IT Support Specialist based in Harare, Zimbabwe.  
Scripts are written to solve real IT support problems, not just as exercises.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/tanyajimu)

> *New scripts added regularly. See the commit history for what's been added and when.*
