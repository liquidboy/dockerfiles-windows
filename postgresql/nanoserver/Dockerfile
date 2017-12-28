FROM microsoft/windowsservercore:10.0.14393.1944 AS download

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ENV PG_VERSION 10.1-3

RUN Invoke-WebRequest $('http://s3-ap-southeast-2.amazonaws.com/public-libs/postgresql-{0}-windows-x64-binaries.zip' -f $env:PG_VERSION) -OutFile 'postgres.zip' -UseBasicParsing ; \
    Expand-Archive postgres.zip -DestinationPath C:\ ; \
    Remove-Item postgres.zip

RUN Invoke-WebRequest 'http://s3-ap-southeast-2.amazonaws.com/public-libs/vcredist_x64.exe' -OutFile vcredist_x64.exe ; \
    Start-Process vcredist_x64.exe -ArgumentList '/install', '/passive', '/norestart' -NoNewWindow -Wait ; \
    Remove-Item vcredist_x64.exe

FROM microsoft/nanoserver:10.0.14393.1944

COPY --from=download /pgsql /pgsql
COPY --from=download /windows/system32/msvcp120.dll /pgsql/bin/msvcp120.dll
COPY --from=download /windows/system32/msvcr120.dll /pgsql/bin/msvcr120.dll

RUN setx /M PATH "C:\pgsql\bin;%PATH%"

EXPOSE 5432
CMD ["postgres"]