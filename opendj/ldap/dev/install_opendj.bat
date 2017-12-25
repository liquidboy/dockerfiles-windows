SET ROOT_USER=Directory Manager
SET ROOT_USER_PASSWORD=Password123

cd ldap

REM Install OpenDJ
CALL opendj\setup.bat --cli --backendType "je" --baseDN "dc=id,dc=jose,dc=com" --addBaseEntry --ldapPort "389" --adminConnectorPort "4444" --rootUserDN "cn=%ROOT_USER%" --no-prompt --noPropertiesFile --acceptLicense --verbose --rootUserPassword %ROOT_USER_PASSWORD%

REM endless loop to keep the service that has already started running
rem :begin
rem goto begin