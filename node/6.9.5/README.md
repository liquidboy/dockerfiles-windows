# Node

A Windows Server Core Docker container image with Node.js 6.9.5 installed.


## Building WindowsCore version

```
docker build -t jose/servercore-10/node-6.9.5 -f Dockerfile .
```


### Building Nanoserverd version

```
docker build -t jose/nano/node-6.9.5 -f nano/Dockerfile .
```



### Run it on HOST:

```
    docker run -p 5432:5432 -td --name node-1 jose/servercore-10/node-6.9.5:latest
```



### Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" node-1



```