@echo off
setlocal
title Teamcenter Business Modeler IDE

if not defined TC_ROOT set TC_ROOT=C:\Siemens\Teamcenter2406

if not defined IIOP_SERVER_PATH set IIOP_SERVER_PATH=~your_iiopserver_dir~

if not defined HTTP_SERVER_PATH set HTTP_SERVER_PATH=~your_httpserver_dir~

if exist "%TC_ROOT%\install\tem_init.bat" call "%TC_ROOT%\install\tem_init.bat"

set JRE_HOME=%TC_JRE_HOME%
set JAVA_HOME=C:\Siemens\jdk-17.0.3
set JDK_HOME=C:\Siemens\jdk-17.0.3
set FMS_HOME=~your_fms_home_dir~

set PATH=%JRE_HOME%\bin;%JDK_HOME%\bin;%TC_ROOT%\lib;%FMS_HOME%\bin;%FMS_HOME%\lib;%FMS_HOME%;%PATH%

@echo Starting Teamcenter Business Modeler IDE...
IF EXIST BusinessModelerIDE.exe (
start BusinessModelerIDE.exe %*
) ELSE (
start %TC_ROOT%\bmide\client\BusinessModelerIDE.exe %*
)

endlocal
