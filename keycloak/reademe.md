# Keycloak on Docker NanoServer container

Build a Docker image containing Keycloak inside a windows container (nanoserver)


## Keycloak latest
download tar.gz and explode in keycloak folder


Build it:

```
$ cd keycloak

docker build -t jose/keycloak/nanoserver-insider:3.4.2 -f nanoserver/Dockerfile .
```


Run it: 

```
docker run -p 8080:8080 --name keycloak jose/keycloak:3.4.2 c:\keycloak-3.4.2\bin\standalone.bat
```