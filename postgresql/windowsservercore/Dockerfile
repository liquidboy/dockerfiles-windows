FROM microsoft/windowsservercore:1709

ENV JAVA_PKG=server-jre-8u152-windows-x64.tar.gz \
    JAVA_HOME=C:\\jdk1.8.0_152 \
    PG_PKG=postgresql/ \
    PG_HOME=C:\\postgresql

ADD $JAVA_PKG /
ADD $PG_PKG $PG_HOME

RUN setx /M PATH %PATH%;%JAVA_HOME%\bin

# keep this container running forever because it runs services  https://stackoverflow.com/questions/25775266/how-to-keep-docker-container-running-after-starting-services
# ENTRYPOINT ["tail", "-f", "/dev/null"]

# keep container running and command showing  https://stackoverflow.com/questions/36206906/docker-how-to-execute-a-batch-file-when-container-starts-and-keep-the-user-in-c
# CMD c:\postgresql\Init-Container.bat && cmd