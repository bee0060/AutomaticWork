:: =====================================================::
:: AUTO OPEN IMAIBO FE ENVIORMENT.						::
:: AUTHOR: STEVEN WENG 									::
:: CREATED ON: 2016/02/02								::
:: =====================================================::

:: mention
echo off
echo ---------------------------------------------------------------------
echo.
echo                             iMaibo  FE                               
echo.
echo ---------------------------------------------------------------------
echo.
echo Please be sure imaibo-fe, imaibo-stockmarket, imaibo-portfolio project and redis DB(\Redis-x64-2.8.2101 folder)are in the same folder, e.g.:
echo \anyFolder
echo   \imaibo-fe
echo   \imaibo-stockmarket
echo   \imaibo-portfolio
echo   \Redis-x64-2.8.2101
echo  ---------------------------------------------------------------------
echo.


set /p disk=Please enter the projects' disk(e.g. D), blank will use current disk: 
echo.

set /p rootPath=Please enter the root folder path of prjects(e.g. src\imaibo), blank will use current folder:
echo.

echo Please enter the backend profiles you want(e.g. local2qadb), 
echo.    blank will use the first profiles in project's application.yml:
set /p profiles=
echo.

set manualWaitRedisBoot=D
set /p manualWaitRedisBoot=Do you need to wait for redis' boot manually? If your PC is slow, please enter Y.(Y/N, defualt as N):
echo.
echo.


:: start run !
if defined disk (
	cd %disk%:\
)


if defined rootPath (
	cd "%rootPath%"
)


If NOT EXIST "Redis-x64-2.8.2101" (
	echo Could not find redis folder, batch will fail and exit.
	TIMEOUT /t 3
	EXIT
)

If NOT EXIST "imaibo-fe" (
	echo Could not find imaibo-fe folder, batch will fail and exit.
	TIMEOUT /t 3
	EXIT
)

If NOT EXIST "imaibo-stockmarket" (
	echo Could not find imaibo-stockmarket folder, batch will fail and exit.
	TIMEOUT /t 3
	EXIT
)

If NOT EXIST "imaibo-portfolio" (
	echo Could not find imaibo-portfolio folder, batch will fail and exit.
	TIMEOUT /t 3
	EXIT
)

echo Simple checking is successful, press any key to run fe env....
TIMEOUT /t 3

echo on


:: RUN redis
cd Redis-x64-2.8.2101
START cmd /C redis-server.exe redis.windows.conf
cd ..


:: RUN imaibo-stockmarket
cd imaibo-stockmarket
START cmd /K node app.js local
cd ..


If /I %manualWaitRedisBoot% == Y (
	echo Please press any key when your redis has boot.
	PAUSE
)


:: redirect to imaibo-portfolio
cd imaibo-portfolio

:: SET SPRING_PROFILES_ACTIVE param is need
if defined profiles (
	SET SPRING_PROFILES_ACTIVE=%profiles%
)

:: RUN mock-auth-server
cd mock-auth-server
START cmd /K gradlew bootRun
cd ..

:: RUN portal
cd portal
START cmd /K gradlew bootRun
cd ..

:: back to root folder
cd ..

:: run imaibo-fe
cd imaibo-fe

:: RUN express
START cmd /K node server.js local

:: RUN gulp and gulp watch for fe
START cmd /C gulp
START cmd /C gulp watch

cd ..


:: PAUSE COMMAND FOR DEBUG
:: PAUSE
