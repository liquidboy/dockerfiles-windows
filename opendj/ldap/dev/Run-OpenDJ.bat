SET ROOT_USER=%1
SET ROOT_USER_PASSWORD=%2
rem SET BASE_DN=%3
SET LDAP_PORT=%3
SET ADMIN_PORT=%4

call c:\ldap\dev\Init-Container.bat %ROOT_USER% %ROOT_USER_PASSWORD% %LDAP_PORT% %ADMIN_PORT%

CALL PowerShell c:\ldap\dev\wait-service.ps1 -ServiceName "TimeBrokerSvc"