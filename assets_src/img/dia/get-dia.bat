@ECHO OFF && ECHO.
:: "get-dia.bat" v2.0.0 (2021/03/02) by Tristano Ajmone
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                    Automatic Dia Downloader for Windows                       *
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO This script will download the correct version of Dia and unpack it to the "Dia\"
ECHO folder inside the current directory.
:: -----------------------------------------------------------------------------
SETLOCAL ENABLEDELAYEDEXPANSION
SET DiaVer=0.97
SET DiaZip=dia_0.97_win32.zip
SET DiaZipURL=https://sourceforge.net/projects/dia-installer/files/dia/0,97/!DiaZip!/download
SET DiaDir=Dia\
:: -----------------------------------------------------------------------------
:: Check if OS is Windows 10:
VER | FIND "Version 10" > NUL
IF ERRORLEVEL == 1 (
	ECHO.
	ECHO *** WARNING^^!^^!^^! *** This script requires Windows 10 to work because it depends on
	ECHO                    cURL and PowerShell 5. It might not work on your machine.
	ECHO.
)
:: -----------------------------------------------------------------------------
CALL :header1 "1. Download Dia %DiaVer%"
IF EXIST !DiaZip! (
	ECHO The folder arealdy contains a "!DiaZip!" archive^^!
	CHOICE /C:YN /T 5 /D N /M "Do you want to overwrite it?"
	IF !ERRORLEVEL! EQU 2 GOTO unpackDia
	ECHO Deleting old version of "!DiaZip!"...
	DEL !DiaZip!
)
ECHO Fetching "!DiaZip!" via cURL from:
ECHO   !DiaZipURL!
CALL :ruler2
CALL curl !DiaZipURL! -OJLf || (
	CALL :error "cURL exited with error."
	GOTO :abort
)
:: -----------------------------------------------------------------------------
:unpackDia
CALL :header1 "2. Unpack Dia Zip Archive via PowerShell"
IF EXIST !DiaDir! (
	ECHO Deleting old "!DiaDir!" folder...
	RD /S /Q !DiaDir!
)
ECHO Invoking PowerShell to unpack "!DiaZip!" to "!DiaDir!"...
CALL powershell -command "Expand-Archive !DiaZip! .\\" || (
	CALL :error "An error occurred while unpacking Dia."
	GOTO :abort
)
ECHO /// Finished^^! ///
EXIT /B
:: =============================================================================
::                               CUSTOM FUNCTIONS
:: =============================================================================
:error
ECHO *** ERROR^^!^^!^^! *******************************************************************
ECHO %~1
ECHO ********************************************************************************
EXIT /B

:abort
ECHO /// Aborting script execution^^! ///
EXIT /B 1

:header1
CALL :ruler1
ECHO %~1
CALL :ruler1
EXIT /B

:ruler1
ECHO ================================================================================
EXIT /B

:ruler2
ECHO ................................................................................
EXIT /B
