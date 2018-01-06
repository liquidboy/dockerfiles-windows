# Node

A Windows Server Core Docker container image with Node.js 6.9.5 and GIT.


### Building new image starting from existing "windowsservercore & node" image, installing "git" on it

```
docker build -t jose/node/git/servercore:latest -f Dockerfile .
```



### Run it on HOST:

```
    docker run -td --name node-git-1 -i jose/node/git/servercore:latest
```



### Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" node-git-1

    jump into container at command line :

        docker exec -i node-git-1 cmd

```