# POSTGRESSQL

Build a Docker image containing ORLEANS BITS ONTOP OF POSTGRESS

    https://github.com/dotnet/orleans/blob/d1794867a176d9c479a49a13d3758f26265d9b1c/src/OrleansSQLUtils/CreateOrleansTables_PostgreSql.sql
    https://stackoverflow.com/questions/9736085/run-a-postgresql-sql-file-using-command-line-arguments


Build it:

```
    docker build -t jose/orleans/postgresql:latest -f windowsservercore/Dockerfile .
```


Run it on HOST:

```
    docker run -p 5432:5432 -td --name orleans-postgresql jose/orleans/postgresql:latest c:\orleans\Run-Orleans.bat postgres Password123 postgresql 5432  "https://s3-ap-southeast-2.amazonaws.com/public-libs/postgresql-10.1-3-windows-x64.exe" "orleans"
```

Test it :

```
    get ip address of running container :  

        docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" orleans-postgresql

    PGAdmin management tool :

        ip   : [above call will get ip]
        port : 5432
        user : postgres
        pwd  : Password123

        you should see the "orleans" DB and several orleans tables in the schema

```


https://github.com/dotnet/orleans/tree/d1794867a176d9c479a49a13d3758f26265d9b1c/src/OrleansSQLUtils


raw sql for orleans - https://raw.githubusercontent.com/dotnet/orleans/d1794867a176d9c479a49a13d3758f26265d9b1c/src/OrleansSQLUtils/CreateOrleansTables_PostgreSql.sql
https://s3-ap-southeast-2.amazonaws.com/public-libs/orleans/CreateOrleansTables_PostgreSql.sql