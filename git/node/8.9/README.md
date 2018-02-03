# Node

A Windows Server Core Docker container image with Node.js 8.9.x and GIT.


### Building new image starting from existing "windowsservercore & node" image, installing "git" on it

```
docker build -t jose/node/servercore/git:8.9 -f Dockerfile .
```



### Run it on HOST:

```
    docker run -td --name node-git-1 -i jose/node/servercore/git:8.9
    docker run -td --name git-angular -i jose/node/servercore/git:8.9
```



### Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" node-git-1
        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" git-angular


    call helper cmds

        .\git-clone.ps1

            git-angular
            https://github.com/angular/angular.git
            labs/elements
            true
            true
            true
            true


    jump into container at command line :

        docker exec -i git-angular cmd

```