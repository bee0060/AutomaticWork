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
echo Please be sure imaibo-fe, imaibo-stockmarket, imaibo-portfolio project and redis DB（\Redis-x64-2.8.2101 folder）are in the same root folder, e.g.:
echo \root
echo   \imaibo-fe
echo   \imaibo-stockmarket
echo   \imaibo-portfolio
echo   \Redis-x64-2.8.2101
echo  ---------------------------------------------------------------------
echo.


set /p disk=Please enter the projects' disk(e.g. D), blank will use current disk: 
set /p rootPath=Please enter the root folder path of prjects(e.g. src\imaibo), blank will use current folder:

echo Please enter the backend profiles you want(e.g. local2qadb), 
set /p profiles=.    blank will use the first profiles in project's application.yml:
echo.
echo.

if defined disk (
	cd %disk%:\

)


if defined rootPath (
	cd "%rootPath%"
)


If NOT EXIST "Redis-x64-2.8.2101" (
	echo Could not find redis folder, batch will fail and exit.
	PAUSE
	EXIT
)

If NOT EXIST "imaibo-fe" (
	echo Could not find imaibo-fe folder, batch will fail and exit.
	PAUSE
	EXIT
)

If NOT EXIST "imaibo-stockmarket" (
	echo Could not find imaibo-stockmarket folder, batch will fail and exit.
	PAUSE
	EXIT
)

If NOT EXIST "imaibo-portfolio" (
	echo Could not find imaibo-portfolio folder, batch will fail and exit.
	PAUSE
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
START cmd /C node app.js local
cd ..

:: redirect to imaibo-portfolio
cd imaibo-portfolio


:: RUN mock-auth-server
cd mock-auth-server

if defined profiles (
	START cmd /C gradlew bootRun -P SPRING.PROFILES.ACTIVE=%profiles%
) else (
	START cmd /C gradlew bootRun
)

cd ..

:: RUN portal
cd portal

if defined profiles (
	START cmd /C gradlew bootRun -P SPRING.PROFILES.ACTIVE=%profiles%
) else (
	START cmd /C gradlew bootRun	
)

cd ..

:: back to root folder
cd ..

:: run imaibo-fe
cd imaibo-fe

:: RUN express
START cmd /C node server.js local

:: RUN gulp watch for fe
START bash gulp watch

cd ..


:: PAUSE COMMAND FOR DEBUG
:: PAUSE
