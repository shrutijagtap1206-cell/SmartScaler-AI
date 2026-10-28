@echo off
cd /d "%~dp0"
if not exist "venv\Scripts\python.exe" (
    echo Creating virtual environment...
    python -m venv venv
    if errorlevel 1 goto error
)
echo Installing / verifying dependencies...
venv\Scripts\python.exe -m pip install -r requirements.txt
if errorlevel 1 goto error

echo.
echo Starting SmartScaler AI at http://127.0.0.1:5000 ...
venv\Scripts\python.exe app.py
goto end

:error
echo An error occurred during setup or execution.
pause

:end
