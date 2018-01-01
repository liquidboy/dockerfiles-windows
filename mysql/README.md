# MYSQL

based off this docker file https://github.com/nanoserver/IIS-PHP-MYSQL/blob/master/Dockerfile/Dockerfile

Build it:

```
    docker build -t jose/mysql/nanoserver-1709/1:latest  -f nanoserver/Dockerfile .
    docker build -t jose/mysql/nanoserver-1709/2:latest  -f nanoserver/Dockerfile .
```


Run it on HOST:

```
    docker run -p 3306:3306 -td --name mysql jose/mysql/nanoserver-1709/2:latest c:\mysql\Run-Docker.bat mysql Password123 mysql 3306 "http://xxxxx.zip"


```

Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" mysql

    PGAdmin management tool :

        ip   : [above call will get ip]
        port : 3306
        user : mysql
        pwd  : Password123

```



raw sql for orleans - https://raw.githubusercontent.com/dotnet/orleans/d1794867a176d9c479a49a13d3758f26265d9b1c/src/OrleansSQLUtils/CreateOrleansTables_PostgreSql.sql