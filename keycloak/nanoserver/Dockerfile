FROM microsoft/nanoserver-insider:latest

ENV JAVA_PKG=server-jre-8u152-windows-x64.tar.gz \
    JAVA_HOME=C:\\jdk1.8.0_152 \
    KEYCLOAK_PKG=keycloak-3.4.2.Final.tar.gz \
    KEYCLOAK_HOME=C:\\keycloak-3.4.2.Final

ADD $JAVA_PKG /
ADD $KEYCLOAK_PKG /
# ADD $JAVA_PKG $JAVA_HOME
# ADD $KEYCLOAK_PKG $KEYCLOAK_HOME

# RUN setx /M PATH %PATH%;%JAVA_HOME%\bin
