@echo off

ren 发布用 贴吧管理器
move Release\TiebaManager.exe 贴吧管理器 >nul
del 贴吧管理器.zip >nul 2>nul
"F:\Program Files\7-Zip\7z.exe" a -tzip 贴吧管理器 贴吧管理器

:Restore
ping 127.0.0.1 -n 3 >nul
move 贴吧管理器\TiebaManager.exe Release >nul 2>nul || goto Restore
ren 贴吧管理器 发布用 2>nul || goto Restore
