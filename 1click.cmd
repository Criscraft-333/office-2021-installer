@echo off
title Activate Office 2021 for FREE
echo Welcome to Office 2021 activator.
@echo off
>nul 2>&1 net session
if %errorLevel% equ 0 (
    rem Do nothing
) else (
    echo Running without admin rights. Please run this script as administrator.
    timeout 2 >nul
    exit /b 0
)
echo You will be asked to tell the type of Office installation. Here are the Office installation paths:
echo 1. C:\Program Files\Microsoft Office\Office16
echo 2. C:\Program Files (x86)\Microsoft Office\Office16
echo Before answering the question, navigate through these two routes to find the correct
choice /c YN /n /m "Did you do a 32-bits Office installation? (Y, N)"
if errorlevel 2 ( 
    echo "Commencing 64-bits Office activation..."
    cd /d %ProgramFiles%\Microsoft Office\Office16
) else if errorlevel 1 (
    echo "Commencing 32-bits Office activation..."
    cd /d %ProgramFiles(x86)%\Microsoft Office\Office16
)

for /f %x in ('dir /b ..\root\Licenses16\proplus2021vl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%x"
cscript ospp.vbs /setprt:1688
cscript ospp.vbs /unpkey:6F7TH >nul
cscript ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH
cscript ospp.vbs /sethst:107.175.77.7
:intents
cscript ospp.vbs /act
if not errorlevel 0xC004F074 (
    echo Product activation successful!
) else if errorlevel 0xC004F074 (
    choice /c YN /n /m "Product activation failed! Try again? (Y, N)
    if errorlevel 2 (
        exit /b 0
    ) else if errorlevel 1 (
        goto intents
    )
)

