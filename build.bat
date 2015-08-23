@echo off

set FN=build.bat

if "%~dpnx0" == "%CD%\%FN%" (
	goto exit
)

:repeat
if exist "%CD%\%FN%" (
	call "%CD%\%FN%" %1
	goto exit
) else (
	if "%~d0\" == "%CD%" (
		goto exit
	) else (
		cd ..
		goto repeat
	)
)

:exit