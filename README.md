# SsilensioRPG Clear

<img width="1024" height="1024" alt="image" src="https://github.com/user-attachments/assets/1f52928b-1dd4-4780-86bf-30528dabd183" />


🧹 A small Windows batch script to clean up **SsilensioRPG client** and **launcher cache**.  
It removes temporary files and recreates fresh folders so the client starts clean.

---

## ✨ Features
- Cleans the Windows **TEMP** folder  
- Cleans the **SsilensioRPG client cache**  
- Simple interactive menu (choose what to clean)  
- Safe: only touches TEMP and client directories  

---

## 📂 What it cleans
- `%TEMP%` — Windows temporary files  
- `%AppData%\SsilensioRPG\clients\SsilensioRPG` — client cache  

---

## ⚙️ Usage
1. Close the SsilensioRPG launcher/client  
2. Double-click `SsilensioRPG Clear.bat`  
3. Select an option from the menu:
   - **1** → Clean TEMP  
   - **2** → Clean Client  
   - **3** → Clean Both  
4. Done ✅  

---

## 🛠️ Customization
If your client is installed in another directory, edit this line in the script:

```bat
set "GAME_DIR=%AppData%\SsilensioRPG\clients\SsilensioRPG"
