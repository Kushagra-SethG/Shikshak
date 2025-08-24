# Simple startup script for CodeTutor AI (No Authentication)
Write-Host "Starting CodeTutor AI Backend..." -ForegroundColor Green

# Navigate to backend directory
Set-Location "C:\Users\sraja\OneDrive\Desktop\CodeTutor_AI\backend"

# Start the Flask backend
Write-Host "Backend will start on http://localhost:5000" -ForegroundColor Yellow
Write-Host "Test interface available at: file:///C:/Users/sraja/OneDrive/Desktop/CodeTutor_AI/test-interface.html" -ForegroundColor Cyan

& "C:\Users\sraja\OneDrive\Desktop\CodeTutor_AI\.venv\Scripts\python.exe" app.py
