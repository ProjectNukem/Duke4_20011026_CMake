@echo off
set VSInstallDir=%~dp0.\..\..
set VSCommonDir=%VSInstallDir%\COMMON
set MSDevDir=%VSCommonDir%\MSDEV98
set MSVCDir=%VSInstallDir%\VC98
set PATH=%MSDevDir%\BIN;%MSVCDir%\BIN;%VSCommonDir%\TOOLS\WINNT;%VSCommonDir%\TOOLS;%PATH%
set INCLUDE=%MSVCDir%\ATL\INCLUDE;%MSVCDir%\INCLUDE;%MSVCDir%\MFC\INCLUDE;%INCLUDE%
set LIB=%MSVCDir%\LIB;%MSVCDir%\MFC\LIB;%LIB%
