@echo off
rem Initialize VC6 environment
call VS6\VC98\BIN\VCVARS32.BAT
set MASM_BIN=%MSVCDir%\BIN

rem Generate
pushd Duke4
cmake -G "Visual Studio 17 2022" -B Build/VS2022 -A Win32
popd

rem Wait for input
pause
