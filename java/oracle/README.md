# Oracle Java on Docker

Build a Docker image containing Oracle Java (Server JRE specifically).

The Oracle Java Server JRE provides the same features as Oracle Java JDK commonly required for Server-side Applications (i.e. Java EE application servers). For more information about Server JRE, visit this [release notes](http://www.oracle.com/technetwork/java/javase/7u21-relnotes-1932873.html#serverjre).

## Java 8
[Download Server JRE 8](http://www.oracle.com/technetwork/java/javase/downloads/server-jre8-downloads-2133154.html) `.tar.gz` file and drop it inside folder `java-8`.
Build it:

```
$ cd java-8
$ docker build -t jose/oracle/serverjre:java8servercore -f windowsservercore/Dockerfile .
$ docker build -t jose/oracle/serverjre:java8nanoserver-insider -f nanoserver/Dockerfile .
$ docker build -t jose/keycloak:3.4.2 -f nanoserver/Dockerfile .
$ docker build -t jose/opendj:3.0.1 -f nanoserver/Dockerfile .
```

## Java 7
[Download Server JRE 7](http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html#sjre-7u80-oth-JPR) `.tar.gz` file and drop it inside folder `java-7`. You also have to extract all files as there are issues adding the `tar.gz` file directly.
Build it:

```
$ cd java-7
$ tar xzf server-jre-7u80-windows-x64.tar.gz
$ docker build -t jose/oracle/serverjre:java7servercore -f windowsservercore/Dockerfile .
$ docker build -t jose/oracle/serverjre:java7nanoserver-insider -f nanoserver/Dockerfile .
```
