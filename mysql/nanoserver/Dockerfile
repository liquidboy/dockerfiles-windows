#####     ## FROM microsoft/nanoserver:1709
#####     #FROM microsoft/nanoserver-insider-powershell:latest
#####     FROM jose/mysql/nanoserver-1709/1:latest
#####     
#####     ## ADD https://downloads.mysql.com/archives/get/file/mysql-5.7.19-winx64.zip mysql.zip
#####     #ADD https://s3-ap-southeast-2.amazonaws.com/public-libs/mysql-5.7.19-winx64.zip mysql.zip
#####     
#####     #RUN powershell -command Expand-Archive -Path c:\mysql.zip -DestinationPath C:\ ;
#####     RUN powershell -command ren C:\mysql-5.7.19-winx64 C:\MySQL
#####     RUN powershell -command New-Item -Path C:\MySQL\data -ItemType directory
#####     RUN powershell -command C:\MySQL\bin\mysqld.exe --initialize --console --explicit_defaults_for_timestamp
#####     RUN powershell -command C:\MySQL\bin\mysqld.exe --install ;
#####     # RUN powershell Remove-Item c:\mysql.zip -Force ;
#####     RUN powershell -command Start-Service mysql
#####     
#####     ENV MYSQL C:\\MySQL
#####     
#####     ## RUN setx PATH /M %PATH%;C:\MySQL\bin
#####     
#####     # EXPOSE 3306
#####     # CMD ["mysql"]



FROM jose/mysql/nanoserver-1709/1:latest

ENV MySQL_PKG=mysql/ \
    MySQL_HOME=C:\\mysql


RUN powershell -command ren C:\mysql-5.7.19-winx64 C:\MySQL
RUN powershell -command New-Item -Path C:\MySQL\data -ItemType directory

COPY $MySQL_PKG $MySQL_HOME

