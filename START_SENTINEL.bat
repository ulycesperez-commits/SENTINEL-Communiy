@echo off
title SENTINEL Live Threat Map
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js 18 or newer is required.
  echo Install it from https://nodejs.org/
  pause
  exit /b 1
)
echo Starting SENTINEL...
echo Keep this window open while using the dashboard.
start "" http://localhost:3300
node server.js
pause
