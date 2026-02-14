# PowerShell Portable (v7.5.4)

這是一個將 Microsoft PowerShell 7.5.4 封裝為 [PortableApps.com](https://portableapps.com) 格式的專案。

## 特色
- **免安裝**：解壓即用，不影響系統內建的 PowerShell 5.1。
- **環境隔離**：所有設定與模組均儲存於 `Data` 目錄中。
- **可攜性**：完美整合進 PortableApps.com 平台選單。

## 如何使用
1. 從 [Releases](../../releases) 下載 `PowerShellPortable_7.5.4.paf.exe`。
2. 執行安裝程式並選擇你的隨身碟或可攜式資料夾路徑。
3. 透過 PortableApps 平台或直接執行 `PowerShellPortable.exe` 啟動。

## 如何自行編譯 (Build)
1. 下載官方 [PowerShell-7.5.4-win-x64.zip](https://github.com/PowerShell/PowerShell/releases/download/v7.5.4/PowerShell-7.5.4-win-x64.zip)。
2. 將內容解壓縮至 `App/PowerShell/`。
3. 使用 [PortableApps.com Launcher](https://portableapps.com) 產生啟動器。
4. 使用 [PortableApps.com Installer](https://portableapps.com) 封裝為 `.paf.exe`。

## 相關連結
- PowerShell 原始碼: [Microsoft/PowerShell](https://github.com)
