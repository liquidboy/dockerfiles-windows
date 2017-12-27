SET ROOT_USER=%1
SET ROOT_USER_PASSWORD=%2
rem SET BASE_DN=%3
SET LDAP_PORT=%3
SET ADMIN_PORT=%4

cd ldap

REM Install OpenDJ
CALL opendj\setup.bat --cli --backendType "je" --baseDN "dc=id,dc=jose,dc=com" --addBaseEntry --ldapPort %LDAP_PORT% --adminConnectorPort %ADMIN_PORT% --rootUserDN "cn=%ROOT_USER%" --no-prompt --noPropertiesFile --acceptLicense --verbose --rootUserPassword %ROOT_USER_PASSWORD%