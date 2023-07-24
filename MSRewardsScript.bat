@echo off
setlocal enabledelayedexpansion

REM Set the number of searches to perform
set searchCount=40

REM Loop through the specified number of searches
for /L %%i in (1,1,%searchCount%) do (
    REM Generate a random search term
    set searchTerm="!random!"

    REM Construct the search URL
    set url="https://www.bing.com/search?q=!searchTerm!"

    REM Open the search URL in Microsoft Edge
    start "" msedge.exe !url!
    
    REM Wait for the tab to load
    ping -n 2 127.0.0.1 > nul
)

REM Wait for all the tabs to load
ping -n 2 127.0.0.1 > nul

REM Close all the tabs
taskkill /f /im msedge.exe

ping -n 5 127.0.0.1 > nul

REM Open the Bing rewards dashboard
start microsoft-edge:https://www.bing.com/rewards/dashboard
