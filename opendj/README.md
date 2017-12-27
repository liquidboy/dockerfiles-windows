# OpenDJ

Build a Docker image containing Oracle Java (Server JRE specifically) & OpenDJ 

## Java 8
[Download Server JRE 8](http://www.oracle.com/technetwork/java/javase/downloads/server-jre8-downloads-2133154.html) `.tar.gz` file and drop it inside folder `java-8`.



Build it:

```
    docker build -t jose/opendj/servercore-1709:3.0.1  -f windowsservercore/Dockerfile .
```


Run it on HOST:

```
    docker run -p 389:389 -p 4444:4444 -td --name opendj jose/opendj/servercore-1709:3.0.1 c:\ldap\dev\Run-OpenDJ.bat "admin" "Password123" "389" "4444"
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