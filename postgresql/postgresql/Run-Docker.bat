call c:\postgresql\Init-Container.bat

set userid=%1 
set userpwd=%2 
set svcname=%3
set svcport=%4
set installpath=%5
set dontrunsvc=%6

rem userid = "postgres"
rem userpwd = "Password123"
rem svcname = "postgresql"
rem svcport = 5432
rem installpath = "https://s3-ap-southeast-2.amazonaws.com/public-libs/postgresql-10.1-3-windows-x64.exe"
rem installpath = "http://get.enterprisedb.com/postgresql/postgresql-9.3.5-1-windows-x64.exe"
rem installpath = "https://s3-ap-southeast-2.amazonaws.com/public-libs/postgresql-9.3.5-1-windows-x64.exe"

PowerShell Install-Postgres -User %userid% -Password %userpwd% -InstallerUrl %installpath% -Port %svcport% -ServiceName %svcname%


if "%~6"=="" goto SERVICE
if "%~6"=="true" goto NOSERVICE else goto SERVICE

:SERVICE

call PowerShell c:\postgresql\wait-service.ps1 -ServiceName %svcname%

:NOSERVICE