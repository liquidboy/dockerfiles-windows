# Node

A Windows Server Core Docker container image with Vagrant and GIT.


### Building new image starting from existing "windowsservercore" image, installing "git" & "vagrant" on it

```
    docker build -t jose/servercore/git/vagrant:latest -f Dockerfile .
```



### Run it on HOST:

```
    docker run -td --name git-vagrant-1 -i jose/servercore/git/vagrant:latest
```



### Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" git-vagrant-1


    call helper cmds

        .\git-clone.ps1

            git-vagrant-1
            https://github.com/angular/angular.git
            labs/elements
            true
            true
            true
            true


    jump into container at command line :

        docker exec -i git-angular cmd

```