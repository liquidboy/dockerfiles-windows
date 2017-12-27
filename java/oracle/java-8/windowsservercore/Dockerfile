FROM microsoft/windowsservercore:1709

ENV JAVA_PKG=server-jre-8u152-windows-x64.tar.gz \
    JAVA_HOME=C:\\jdk1.8.0_152

ADD $JAVA_PKG /

RUN setx /M PATH %PATH%;%JAVA_HOME%\bin
