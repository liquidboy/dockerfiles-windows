# Keycloak on Docker NanoServer container

Build a Docker image containing Keycloak inside a windows container (nanoserver)

Prep:

```
    download tar.gz and explode in keycloak folder or
        Copy : aws/s3/public-libs/server-jre-8u152-windows-x64.tar.gz  to "keycloak" root folder
        Copy : aws/s3/public-libs/keycloak-3.4.2.Final.tar.gz  to "keycloak" root folder

    download content from repo : https://github.com/jboss-dockerfiles/keycloak 
    and push the "server" folder content into "image-content" folder. This will then be copied into
    the image via the dockerfile 

```


Build it:

```
$ cd keycloak

docker build -t jose/nanoserver-insider/keycloak:3.4.2 -f nanoserver/Dockerfile .
docker build -t jose/windowsservercore-insider/keycloak:3.4.2 -f windowsservercore/Dockerfile .
docker build -t identity/keycloak-3.4.2.final-gl1:1 -f linux/Dockerfile . --platform=linux
docker build -t identity/keycloak-3.4.2.final-gl1:1 -f linux/Dockerfile.native . --platform=linux

```


Run it: 

```
docker run -p 8080:8080 --name keycloak jose/nanoserver-insider/keycloak:3.4.2 c:\keycloak-3.4.2.Final\bin\standalone.bat
docker run -p 8080:8080 --name keycloak jose/windowsservercore-insider/keycloak:3.4.2 c:\keycloak-3.4.2.Final\bin\standalone.bat
docker run jboss/keycloak:3.4.2.Final


docker run identity/keycloak-3.4.2.Final-gl1:1
docker ps -a                                                                                            <---- get container name
docker inspect [name of container]                                                                      <---- get IP address of container
docker exec [name of container] /opt/jboss/keycloak/bin/add-user-keycloak.sh -u admin -p Password123    <---- create admin user 
docker restart [name of container]                                                                      <---- restart KC to commit new admin user
http://[ip address of container]:8080                                                                   <---- load keycloak admin

```



Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" keycloak

    docker run -ti --rm -v ~\.docker:/root/.docker -v `pwd`:/cwd realestate/dfresh
```


