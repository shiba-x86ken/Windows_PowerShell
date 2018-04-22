#エラーハンドリング
#$lastexitcode に、最後に実行したコマンドの終了コードが格納されている。
@echo off
exit /b 15

.\other.bat
echo $lastexitcode