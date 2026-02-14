# PowerShell 7.5.4 Portable (PortableApps.com Format)

[繁體中文](#繁體中文) | [English](#english)

---

## 繁體中文

這是一個將 Microsoft PowerShell 7.5.4 封裝為 [PortableApps.com](https://portableapps.com) 格式的專案。它允許您在不影響系統內建 PowerShell 的情況下，隨身攜帶最新的 PowerShell 環境。

### ✨ 特色
- **完全隔離**：所有的設定、模組與 Profile 都儲存在 `Data` 資料夾中。
- **免安裝**：解壓即用，適合放在 USB 隨身碟或雲端硬碟。
- **官方核心**：直接使用 Microsoft 官方釋出的 [v7.5.4 x64檔](https://github.com/PowerShell/PowerShell/releases/download/v7.5.4/PowerShell-7.5.4-win-x64.zip)。

### 🚀 如何使用
1. 前往 [Releases](../../releases) 頁面。
2. 下載 `PowerShellPortable_7.5.4.paf.exe`。
3. 執行並安裝到您的 PortableApps 目錄或任意資料夾。

### 🛠️ 自行建置 (Build)
由於授權限制，此儲存庫不包含 PowerShell 核心檔案。
1. 下載官方 `PowerShell-7.5.4-win-x64.zip`。
2. 將內容解壓縮至 `App/PowerShell/` 目錄。
3. 執行 `PowerShellPortable.exe` 啟動。

---

## English

This project packages Microsoft PowerShell 7.5.4 into the [PortableApps.com](https://portableapps.com) format, enabling a fully portable, up-to-date PowerShell environment.

### ✨ Features
- **Full Isolation**: All configurations, modules, and profiles are stored within the `Data` folder.
- **No Installation Required**: Run directly from a USB drive or cloud storage without affecting the host system's PowerShell 5.1.
- **Official Core**: Built using the official [Microsoft PowerShell v7.5.4 x64](https://github.com/PowerShell/PowerShell/releases/download/v7.5.4/PowerShell-7.5.4-win-x64.zip).

### 🚀 Getting Started
1. Navigate to the [Releases](../../releases) page.
2. Download `PowerShellPortable_7.5.4.paf.exe`.
3. Run the installer and select your preferred directory.

### 🛠️ Manual Build
For licensing and size reasons, this repository does not include the PowerShell core binaries.
1. Download the official `PowerShell-7.5.4-win-x64.zip`.
2. Extract the contents into the `App/PowerShell/` directory.
3. Run `PowerShellPortable.exe` to start.

---

## ⚖️ License & Credits
- **PowerShell** is licensed under the [MIT License](https://github.com) by Microsoft.
- **PortableApps.com** platform and installer are trademarks of Rare Ideas, LLC.
- This packaging project is provided under the **MIT License**.
