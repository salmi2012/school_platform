@echo off
echo ========================================
echo    School Platform Setup Script
echo ========================================
echo.

echo Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed!
    echo Please download and install Git from: https://git-scm.com/download/win
    pause
    exit /b 1
) else (
    echo ✓ Git is installed
)

echo.
echo Checking if Node.js is installed...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed!
    echo Please download and install Node.js from: https://nodejs.org/
    pause
    exit /b 1
) else (
    echo ✓ Node.js is installed
)

echo.
echo Checking if npm is installed...
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: npm is not installed!
    echo Please install Node.js which includes npm
    pause
    exit /b 1
) else (
    echo ✓ npm is installed
)

echo.
echo ========================================
echo    Installing Dependencies
echo ========================================
echo.

echo Installing backend dependencies...
npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install backend dependencies
    pause
    exit /b 1
)

echo.
echo Installing frontend dependencies...
cd client
npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install frontend dependencies
    pause
    exit /b 1
)
cd ..

echo.
echo ========================================
echo    Setup Complete!
echo ========================================
echo.
echo Next steps:
echo 1. Create a GitHub account at https://github.com
echo 2. Create a new repository named 'school-platform'
echo 3. Follow the deployment guide in DEPLOYMENT.md
echo.
echo For Railway deployment:
echo 1. Go to https://railway.app
echo 2. Sign up with GitHub
echo 3. Deploy your repository
echo.
pause 