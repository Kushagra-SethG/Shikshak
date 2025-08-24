# CodeTutor AI - Simple Startup (No Authentication)
# This script starts the backend and opens the React frontend

Write-Host "🎓 Starting CodeTutor AI (Simplified - No Authentication)" -ForegroundColor Green
Write-Host "=" * 60 -ForegroundColor Cyan

# Check if virtual environment exists
$venvPath = "C:\Users\sraja\OneDrive\Desktop\CodeTutor_AI\.venv\Scripts\python.exe"
if (-Not (Test-Path $venvPath)) {
    Write-Host "❌ Virtual environment not found!" -ForegroundColor Red
    Write-Host "Please run the setup script first." -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ Virtual environment found" -ForegroundColor Green

# Start backend
Write-Host "🚀 Starting Backend Server..." -ForegroundColor Yellow
Set-Location "C:\Users\sraja\OneDrive\Desktop\CodeTutor_AI\backend"

Write-Host "Backend will be available at: http://localhost:5000" -ForegroundColor Cyan
Write-Host "API endpoints ready for:" -ForegroundColor White
Write-Host "  • Tutorial Content" -ForegroundColor Gray
Write-Host "  • Quiz Generation" -ForegroundColor Gray  
Write-Host "  • Code Execution" -ForegroundColor Gray
Write-Host "  • AI Integration (Gemini)" -ForegroundColor Gray
Write-Host ""

# Check if Node.js is available
$nodeAvailable = $false
try {
    $null = Get-Command node -ErrorAction Stop
    $nodeAvailable = $true
} catch {
    $nodeAvailable = $false
}

if ($nodeAvailable) {
    Write-Host "✅ Node.js found - React frontend will be available" -ForegroundColor Green
    Write-Host "Frontend will be available at: http://localhost:3000" -ForegroundColor Cyan
} else {
    Write-Host "⚠️  Node.js not found - Using test interface instead" -ForegroundColor Yellow
    Write-Host "Test interface available at: file:///C:/Users/sraja/OneDrive/Desktop/CodeTutor_AI/test-interface.html" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "Press Ctrl+C to stop the servers" -ForegroundColor Red
Write-Host "=" * 60 -ForegroundColor Cyan

# Start the backend
& $venvPath app.py
