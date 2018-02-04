# Keycloak on Docker NanoServer container

Build a Docker image containing Keycloak inside a windows container (nanoserver)

Prep:

```
    download tar.gz and explode in keycloak folder or
    Copy : aws/s3/public-libs/server-jre-8u152-windows-x64.tar.gz  to "keycloak" root folder
    Copy : aws/s3/public-libs/keycloak-3.4.2.Final.tar.gz  to "keycloak" root folder
```


Build it:

```
$ cd keycloak

docker build -t jose/nanoserver-insider/keycloak:3.4.2 -f nanoserver/Dockerfile .
```


Run it: 

```
docker run -p 8080:8080 --name keycloak jose/nanoserver-insider/keycloak:3.4.2 c:\keycloak-3.4.2.Final\bin\standalone.bat
```



Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" keycloak

    OpenDJ management tool :

        ip   :
        port : 4444
        user : cn=Directory Manager
        pwd  : Password123

```