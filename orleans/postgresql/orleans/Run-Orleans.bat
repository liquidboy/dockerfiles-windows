rem call c:\postgresql\Init-Container.bat

set userid=%1 
set userpwd=%2 
set svcname=%3
set svcport=%4
set installpath=%5
set orleansdb=%6

rem userid = "postgres"
rem userpwd = "Password123"
rem svcname = "postgresql"
rem svcport = 5432
rem installpath = "https://s3-ap-southeast-2.amazonaws.com/public-libs/postgresql-10.1-3-windows-x64.exe"
rem installpath = "http://get.enterprisedb.com/postgresql/postgresql-9.3.5-1-windows-x64.exe"
rem installpath = "https://s3-ap-southeast-2.amazonaws.com/public-libs/postgresql-9.3

rem install postgresql
call c:\postgresql\Run-Docker.bat %userid% %userpwd% %svcname% %svcport% %installpath% "true"

rem create orleans database
setx "PGPASSWORD" "Password123"
cd C:\Program Files\PostgreSQL\9.3\bin\
start "orleansdb" "createdb.exe" -U %userid% %orleansdb%

rem time for newly created DB to init
timeout 20

rem install orleans schema
cd C:\Program Files\PostgreSQL\9.3\bin\
start "orleansschema" "psql" -U %userid% -d %orleansdb% -f "c:\orleans\CreateOrleansTables_PostgreSql.sql"

rem cleanup
setx "PGPASSWORD" ""


rem run neverending service so container doesn't exit
call PowerShell c:\postgresql\wait-service.ps1 -ServiceName %svcname%
