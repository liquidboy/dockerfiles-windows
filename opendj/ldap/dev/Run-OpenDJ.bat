SET ROOT_USER=%1
SET ROOT_USER_PASSWORD=%2
SET LDAP_PORT=%3
SET ADMIN_PORT=%4
SET BASE_DN=%5

call c:\ldap\dev\Init-Container.bat %ROOT_USER% %ROOT_USER_PASSWORD% %LDAP_PORT% %ADMIN_PORT% %BASE_DN%

CALL PowerShell c:\ldap\dev\wait-service.ps1 -ServiceName "TimeBrokerSvc"