# 設定版本與下載連結
$version = "7.5.4"
$downloadUrl = "https://github.com"
$extractPath = ".\App\PowerShell"
$zipFile = "powershell.zip"

# 1. 建立必要目錄
Write-Host "--- 正在建立目錄結構 ---" -ForegroundColor Cyan
New-Item -ItemType Directory -Force -Path $extractPath, ".\Data", ".\Other\Help"

# 2. 下載 PowerShell 核心檔案
Write-Host "--- 正在從 GitHub 下載 PowerShell v$version ---" -ForegroundColor Cyan
Invoke-WebRequest -Uri $downloadUrl -OutFile $zipFile

# 3. 解壓縮
Write-Host "--- 正在解壓縮檔案至 $extractPath ---" -ForegroundColor Cyan
Expand-Archive -Path $zipFile -DestinationPath $extractPath -Force

# 4. 清理暫存檔
Remove-Item $zipFile
Write-Host "--- 準備就緒！現在你可以開啟 PortableApps 工具進行封裝 ---" -ForegroundColor Green
