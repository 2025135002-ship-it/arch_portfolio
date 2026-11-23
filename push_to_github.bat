@echo off
chcp 65001 > nul
cd /d "%~dp0"

echo [INFO] Step 1: Adding files...
git add .

echo [INFO] Step 2: Committing...
git commit -m "Update architecture website code"

echo [INFO] Step 3: Pushing to GitHub...
git push -u origin main

echo.
echo ========================================================
if %ERRORLEVEL% EQU 0 (
    echo [OK] Push successful!
) else (
    echo [ERROR] Push failed. Check the error message above.
)
echo ========================================================
pause
