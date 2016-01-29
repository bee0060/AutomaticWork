:: =====================================================::
:: AUTO OPEN ALL SOFTWARE I NEED AT WORK, ONLY FOR EPAM.::
:: AUTHOR: STEVEN WENG 									::
:: CREATED ON: 2015/10/09								::
:: MODIFIED ON: 2016/01/29								::
:: =====================================================::


:: WAIT 2 SECONDS FOR OS STARTUP
TIMEOUT /t 2
 

:: OPEN GIT BASH
START "" "D:\Develop Support\Git\Bin\sh.exe" --login -i

:: OPEN SUBLIME TEXT 2 IF NOT OPENED YET
START "" "D:\Develop Tools\Sublime Text 2\sublime_text.exe"

:: OPEN THE WEB PAGES ARE NEED
START /max "" "https://jirapct.epam.com/"
START /max "" "https://translate.google.com/?hl=zh-CN&tab=TT"
START /max "" "https://pmcpct.epam.com/pmc/login.do"


:: OPEN THE PERSONAL SOFTWARE
START "" "D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe"


:: OPEN SKYPE
START "" "C:\Program Files (x86)\Skype\Phone\Skype.exe"

:: OPEN OUTLOOK ON TASK BAR
START "" "C:\Users\Steven_Weng\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Outlook 2013.lnk"


:: LYNC WILL AUTO RUN WHEN LOGIN WINDOW

:: PAUSE COMMAND FOR DEBUG
:: PAUSE
