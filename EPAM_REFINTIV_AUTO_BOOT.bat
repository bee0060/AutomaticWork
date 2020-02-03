:: =========================================================::
:: AUTO OPEN ALL SOFTWARES, WEBSITES NEEDDE, FOR REFINTIV.	::
:: AUTHOR: STEVEN WENG 									                    ::
:: CREATED ON: 2020/01/06								                    ::
:: LAST UPDATED ON: 2020/02/03								                    ::
:: =========================================================::


:: WAIT 1 SECOND FOR OS STARTUP
TIMEOUT /t 1


:: OPEN THE WEB PAGES ARE NEED
START /max "" "https://translate.google.com.hk/?hl=zh-CN"
START /max "" "https://github.com/"

:: OPEN OFFICE PORTAL
START /max "" "https://www.office.com/"
:: OPEN ONLINE OUTLOOK
START /max "" "https://outlook.office.com/mail/inbox"
:: OPEN ONLINE TEAMS
START /max "" "https://teams.microsoft.com/"

:: OPEN REFINITIV CONFLUENCE
START /max "" "https://confluence.refinitiv.com/display/FA/5.7+Human+Workflow"
:: OPEN REFINITIV COMPASS
START /max "" "https://compass.thomsonreuters.com/timereporting/#/register"

:: OPEN REFINITIV JIRA
START /max "" "https://jira.refinitiv.com/secure/RapidBoard.jspa?rapidView=10658&projectKey=CCWC&view=planning"

:: OPEN REFINITIV LUCIDCHART - DB DESIGN
START /max "" "https://www.lucidchart.com/documents/edit/a889da07-3e40-4913-ab94-03bb8c6fb493/8T03FpFVbxdH?shared=true"

:: OPEN ANGULAR DOC
START /max "" "https://angular.io/docs"
:: OPEN REFINITIV ELF DOC
START /max "" "https://elf.int.refinitiv.com/elements/coral-accordion.html"
:: OPEN REFINITIV GITLAB
START /max "" "https://git.sami.int.thomsonreuters.com/"

:: OPEN LOCAL CCW ENVIRONMENT
START /max "" "http://localhost:8080/" --new-window

:: Project startup
:: CCW START
START /D "D:\src\refinitiv\workflow-mock-server" ccw start
:: MOCK SERVER START
START /D "D:\src\refinitiv\workflow-mock-server" npm start

:: OPEN OUTLOOK ON TASK BAR
START "" "C:\Users\Steven_Weng\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Outlook"
