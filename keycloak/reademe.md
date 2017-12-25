# Keycloak on Docker NanoServer container

Build a Docker image containing Keycloak inside a windows container (nanoserver)


## Keycloak latest
download tar.gz and explode in keycloak folder


Build it:

```
$ cd keycloak

$ docker build -t jose/keycloak:3.4.2 -f nanoserver/Dockerfile .
$ docker build -t jose/opendj/nanoserver:3.0.1 -f nanoserver/Dockerfile .
$ docker build -t jose/opendj/nanoserver:3.0.1b -f nanoserver/Dockerfile .
```
