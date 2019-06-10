:: =====================================================::
:: AUTO OPEN ALL SOFTWARES NEEDDE, FOR HKJC project.	::
:: AUTHOR: STEVEN WENG 									::
:: CREATED ON: 2016/11/21								::
:: =====================================================::


:: WAIT 1 SECOND FOR OS STARTUP
TIMEOUT /t 1


:: OPEN THE WEB PAGES ARE NEED
START /max "" "https://translate.google.com.hk/?hl=zh-CN"
START /max "" "https://github.com/"
:: gitlab
START /max "" "https://git.epam.com/hkex-cpfw/hkex-cpfw"
:: JIRA KANBAN board
START /max "" "https://jiraeu.epam.com/secure/RapidBoard.jspa?rapidView=54557&projectKey=HKEXCPFW"
:: KB home
START /max "" "https://kb.epam.com/display/HKEXCPFW"


:: WECHAT
START /max "" "https://wx.qq.com/"

:: OPEN THE PERSONAL SOFTWARE
START "" "C:\Program Files (x86)\Tencent\QQ\Bin\QQ.exe"

:: OPEN OUTLOOK ON TASK BAR
START "" "C:\Users\Steven_Weng\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Outlook"

:: LYNC WILL AUTO RUN WHEN LOGIN WINDOW
