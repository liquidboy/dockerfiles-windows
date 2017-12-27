call c:\postgresql\Init-Container.bat

set userid=%1 
set userpwd=%2 
set svcname=%3
set svcport=%4
set installpath=%5

rem userid = "postgres"
rem userpwd = "Password123"
rem svcname = "postgresql"
rem svcport = 5432
rem installpath = "http://get.enterprisedb.com/postgresql/postgresql-9.3.5-1-windows-x64.exe"



PowerShell Install-Postgres -User %userid% -Password %userpwd% -InstallerUrl %installpath% -Port %svcport% -ServiceName %svcname%

call PowerShell c:\postgresql\wait-service.ps1 -ServiceName %svcname%