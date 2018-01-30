# POSTGRESSQL

Build a Docker image containing PostgreSQL

    https://coderwall.com/p/r6nqrw/automated-postgresql-install-and-configuration-with-powershell


Build it:

```
    docker build -t jose/servercore-1709/postgresql:latest  -f windowsservercore/Dockerfile .
    docker build -t jose/nanoserver-1709/postgresql:latest  -f nanoserver/Dockerfile.1709 .
    docker build -t jose/nanoserver-insider/postgresql:latest  -f nanoserver/Dockerfile .
```


Run it on HOST:

```
    # original download url "http://get.enterprisedb.com/postgresql/postgresql-9.3.5-1-windows-x64.exe"

    docker run -p 5432:5432 -td --name postgresql jose/postgresql/servercore-1709:latest c:\postgresql\Run-Docker.bat postgres Password123 postgresql 5432 "http://s3-ap-southeast-2.amazonaws.com/public-libs/postgresql-9.3.5-1-windows-x64.exe"

    docker run -p 5432:5432 -td --name postgresql jose/postgresql/servercore-1709:latest c:\postgresql\Run-Docker.bat postgres Password123 postgresql 5432 "https://s3-ap-southeast-2.amazonaws.com/public-libs/postgresql-9.6.6-3-windows-x64.exe"

    docker run -p 5432:5432 -td --name postgresql jose/postgresql/servercore-1709:latest c:\postgresql\Run-Docker.bat postgres Password123 postgresql 5432 "https://s3-ap-southeast-2.amazonaws.com/public-libs/postgresql-10.1-3-windows-x64.exe"

```

Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" postgresql

    PGAdmin management tool :

        ip   : [above call will get ip]
        port : 5432
        user : postgres
        pwd  : Password123

```



raw sql for orleans - https://raw.githubusercontent.com/dotnet/orleans/d1794867a176d9c479a49a13d3758f26265d9b1c/src/OrleansSQLUtils/CreateOrleansTables_PostgreSql.sql