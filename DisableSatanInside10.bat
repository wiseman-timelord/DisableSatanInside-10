@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
CLS
TITLE Disable Satan Inside 10

REM Check if script is run as administrator
NET SESSION >NUL 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO     This script must be run as administrator!
    PAUSE
    EXIT /B
) ELSE (
    ECHO     Script is running with administrator privileges.
    TIMEOUT /T 1 /NOBREAK >NUL
)

REM Check if the operating system is Windows 10
FOR /F "tokens=4-5 delims=[.] " %%A IN ('VER') DO (
    SET "OS_MAJOR=%%A"
    SET "OS_MINOR=%%B"
)

IF NOT "%OS_MAJOR%"=="10" (
    ECHO     This script is designed for Windows 10. Your OS version is %OS_MAJOR%. Please run this script on Windows 10.
    PAUSE
    EXIT /B
) ELSE (
    ECHO     Operating system is Windows 10.
    TIMEOUT /T 1 /NOBREAK >NUL
)

:MENU
CLS
ECHO ========================================================================================================================
ECHO     Disable Satan Inside 10
ECHO ========================================================================================================================

    ECHO Affected Services:
    ECHO - Netlogon
    ECHO - Group Policy Client
    ECHO - Windows Time
    ECHO - Remote Desktop Configuration
    ECHO - Remote Desktop Services
    ECHO - Remote Registry
    ECHO - IP Helper
    ECHO - SSDP Discovery
    ECHO - Function Discovery Provider Host
    ECHO - Function Discovery Resource Publication
    ECHO - Windows Error Reporting Service
    ECHO - Diagnostic Policy Service
    ECHO - Windows Update

ECHO ------------------------------------------------------------------------------------------------------------------------
SET /P "CHOICE=Selection; Disable All = D, Enable All = E, Exit Program = X: "

IF /I "%CHOICE%"=="D" GOTO DISABLE
IF /I "%CHOICE%"=="E" GOTO ENABLE
IF /I "%CHOICE%"=="X" EXIT
ECHO Invalid selection. Please try again.
TIMEOUT /T 1 /NOBREAK >NUL
GOTO MENU

:DISABLE
CLS
ECHO ========================================================================================================================
ECHO     Disabling Services...
ECHO ========================================================================================================================
ECHO Are you sure you want to disable all affected services? (Y/N)
SET /P "CONFIRM=Enter your choice: "
IF /I "!CONFIRM!" NEQ "Y" GOTO MENU
CALL :SERVICE_ACTION disable
ECHO.
ECHO Please restart your computer after exiting the program.
PAUSE
GOTO MENU

:ENABLE
CLS
ECHO ========================================================================================================================
ECHO     Enabling Services...
ECHO ========================================================================================================================
ECHO Are you sure you want to enable all affected services? (Y/N)
SET /P "CONFIRM=Enter your choice: "
IF /I "!CONFIRM!" NEQ "Y" GOTO MENU
CALL :SERVICE_ACTION enable
ECHO.
ECHO Please restart your computer after exiting the program.
PAUSE
GOTO MENU

:SERVICE_ACTION
SET "ACTION=%~1"
FOR %%S IN (
    "Netlogon"
    "gpsvc"
    "W32Time"
    "SessionEnv"
    "TermService"
    "RemoteRegistry"
    "iphlpsvc"
    "SSDPSRV"
    "fdPHost"
    "FDResPub"
    "WerSvc"
    "DPS"
    "wuauserv"
) DO (
    ECHO Processing service: %%~S
    IF /I "!ACTION!"=="disable" (
        SC STOP %%~S >NUL 2>&1
        SC CONFIG %%~S START= DISABLED >NUL 2>&1
        IF !ERRORLEVEL! EQU 0 (
            ECHO Service %%~S disabled successfully.
            TIMEOUT /T 1 /NOBREAK >NUL
        ) ELSE (
            ECHO Failed to disable service %%~S.
            TIMEOUT /T 3 /NOBREAK >NUL
        )
    ) ELSE (
        SC CONFIG %%~S START= AUTO >NUL 2>&1
        SC START %%~S >NUL 2>&1
        IF !ERRORLEVEL! EQU 0 (
            ECHO Service %%~S enabled successfully.
            TIMEOUT /T 1 /NOBREAK >NUL
        ) ELSE (
            ECHO Failed to enable service %%~S.
            TIMEOUT /T 3 /NOBREAK >NUL
        )
    )
)
EXIT /B

