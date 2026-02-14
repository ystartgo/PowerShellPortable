# =================================================================
# PowerShell Portable 7.5.4 建置腳本
# 來源: https://github.com
# =================================================================

$Version = "7.5.4"
$Architecture = "x64" # 可改為 x86 或 arm64
$ZipName = "PowerShell-$Version-win-$Architecture.zip"
$Url = "https://github.com"

$RootPath = Get-Location
$AppPath = Join-Path $RootPath "App\PowerShell"
$TempZip = Join-Path $RootPath "temp_powershell.zip"

Write-Host ">>> 開始建置 PowerShell Portable v$Version ($Architecture) <<<" -ForegroundColor Cyan

# 1. 建立必要的 PortableApps 目錄結構
$Dirs = @("App\PowerShell", "App\AppInfo\Launcher", "Data", "Other\Help")
foreach ($dir in $Dirs) {
    $target = Join-Path $RootPath $dir
    if (!(Test-Path $target)) {
        New-Item -ItemType Directory -Path $target -Force | Out-Null
        Write-Host "[建立目錄] $dir" -ForegroundColor Gray
    }
}

# 2. 下載官方 ZIP
Write-Host "[下載中] 正在從 GitHub 取得 $ZipName..." -ForegroundColor Yellow
try {
    Invoke-WebRequest -Uri $Url -OutFile $TempZip -ErrorAction Stop
} catch {
    Write-Error "下載失敗，請檢查網路或版本號是否存在。"
    exit
}

# 3. 解壓縮並清理
Write-Host "[解壓中] 正在部署至 $AppPath..." -ForegroundColor Yellow
if (Test-Path $AppPath) { Remove-Item "$AppPath\*" -Recurse -Force }
Expand-Archive -Path $TempZip -DestinationPath $AppPath -Force
Remove-Item $TempZip

# 4. 建立標記檔案 (選配，紀錄版本來源)
$ReleaseInfo = @{
    Version = $Version
    Source = "https://github.com"
    BuildDate = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
}
$ReleaseInfo | SharpYaml.Serialization.Serializer | Out-Null # 若無套件則略過
$ReleaseInfo | ConvertTo-Json | Out-File (Join-Path $AppPath "portable_info.json")

Write-Host "`n[完成] 檔案已準備就緒！" -ForegroundColor Green
Write-Host "現在請執行 PortableApps.com Installer 封裝 .paf.exe" -ForegroundColor White
