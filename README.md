# SsilensioRPG Clear

🧹 A simple Windows batch script for cleaning up Minecraft server directories, logs, and temporary files.  
Designed for the **SsilensioRPG** server, but works with any setup that follows a similar structure.  

---

## 📦 Features
- Deletes old logs, cache, and temporary files
- Keeps your server folder clean and lightweight
- Runs on Windows with a single double-click
- Fully customizable to your server’s paths

---

## ⚙️ Usage
1. Download the script: [`SsilensioRPG Clear.bat`](SsilensioRPG%20Clear.bat)  
2. Place it inside your server root folder  
3. Double-click the `.bat` file (or run via `cmd.exe`)  
4. Watch your server folder become clean ✨

---

## 📝 Example
```bat
@echo off
echo Cleaning server logs...
del /s /q logs\*.log
echo Cleaning crash reports...
del /s /q crash-reports\*.txt
echo Done!
pause
