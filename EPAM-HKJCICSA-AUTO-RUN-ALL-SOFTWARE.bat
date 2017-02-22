:: =====================================================::
:: AUTO OPEN ALL SOFTWARES NEEDDE, FOR HKJC project.	::
:: AUTHOR: STEVEN WENG 									::
:: CREATED ON: 2016/11/21								::
:: =====================================================::


:: WAIT 1 SECOND FOR OS STARTUP
TIMEOUT /t 1

:: OPEN SUBLIME TEXT 2 IF NOT OPENED YET
 ::START "" "D:\Program Files\Sublime Text 2\sublime_text.exe"

:: OPEN THE WEB PAGES ARE NEED
START /max "" "https://jirapct.epam.com/jira/secure/RapidBoard.jspa?rapidView=40750"
START /max "" "https://jirapct.epam.com/jira/secure/RapidBoard.jspa?rapidView=40724"
START /max "" "https://translate.google.com/?hl=zh-CN&tab=TT"
START /max "" "https://pmc.epam.com/pmc/timejournal/list.do?projectId=4060741400037942733"
START /max "" "https://kb.epam.com/display/HKJCICSA/HKJC+EPAM+DEV+Environment"

:: OPEN THE PERSONAL SOFTWARE
START "" "D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe"


:: OPEN SKYPE
START "" "C:\Program Files (x86)\Skype\Phone\Skype.exe"

:: OPEN OUTLOOK ON TASK BAR
START "" "C:\Users\Steven_Weng\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Outlook 2016"


:: LYNC WILL AUTO RUN WHEN LOGIN WINDOW


:: DIRECT TO WORK FOLDER
::cd D:\
::cd "src\HKJC-ICSA"

:: OPEN GIT BASH
::START "" "D:\Program Files\Git\bin\sh.exe" --login -i

:: RUN HTTP-SERVER AND WATCH
::bash npm run dev


:: PAUSE COMMAND FOR DEBUG
:: PAUSE