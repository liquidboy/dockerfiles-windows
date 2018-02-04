# OpenDJ

Build a Docker image containing Oracle Java (Server JRE specifically) & OpenDJ 

Prep:

```
    Copy : aws/s3/public-libs/server-jre-8u152-windows-x64.tar.gz  to "opendj" root folder
    Copy : aws/s3/public-libs/OpenDJ-3.0.1.zip  to "opendj" root folder
```


Build it:

```
    docker build -t jose/servercore-1709/opendj:3.0.1  -f windowsservercore/Dockerfile .
```


Run it on HOST:

```
    docker run -p 389:389 -p 4444:4444 -td --name opendj jose/servercore-1709/opendj:3.0.1 c:\ldap\dev\Run-OpenDJ.bat "admin" "Password123" "389" "4444" "josedomain"
```


Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" opendj

    OpenDJ management tool :

        ip   :
        port : 4444
        user : cn=Directory Manager
        pwd  : Password123

```