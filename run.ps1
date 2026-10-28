Set-Location -Path $PSScriptRoot

if (-not (Test-Path "venv\Scripts\python.exe")) {
    Write-Host "Creating virtual environment..." -ForegroundColor Cyan
    python -m venv venv
}

Write-Host "Verifying / installing requirements..." -ForegroundColor Cyan
.\venv\Scripts\python.exe -m pip install -r requirements.txt

Write-Host "Starting SmartScaler AI on http://127.0.0.1:5000 ..." -ForegroundColor Green
.\venv\Scripts\python.exe app.py
