# POSTGRESSQL

Build a Docker image containing PostgreSQL

    https://coderwall.com/p/r6nqrw/automated-postgresql-install-and-configuration-with-powershell


Build it:

```
    docker build -t jose/postgresql:latest  -f windowsservercore/Dockerfile .
```


Run it on HOST:

```
    docker run -p 5432:5432 -i --name postgresql jose/postgresql:latest c:\postgresql\Run-Docker.bat postgres Password123 postgresql 5432 "http://get.enterprisedb.com/postgresql/postgresql-9.3.5-1-windows-x64.exe"
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