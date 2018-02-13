FROM jose/node/servercore:8.9

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ENV chocolateyUseWindowsCompression false

RUN iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')); \
choco install -y git -params "/GitAndUnixToolsOnPath"

RUN git --version --build-options
RUN cmd.exe /c ver
# RUN type 'C:\Program Files\Git\etc\install-options.txt'

ENV SCRIPTS_HOME=C:\\scripts \
    SCRIPTS=scripts/ 

ADD $SCRIPTS $SCRIPTS_HOME

RUN mkdir C:\source
WORKDIR C:\\source