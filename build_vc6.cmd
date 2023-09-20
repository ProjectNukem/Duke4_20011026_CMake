@echo off
rem Initialize VC environment
call VS6\VC98\BIN\VCVARS32.BAT
set MASM_BIN=%MSVCDir%\BIN

rem Build
pushd Duke4
cmake --preset %1
cmake --build --preset %1
popd

rem Wait for input
pause
