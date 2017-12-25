FROM microsoft/nanoserver-insider:latest

ENV JAVA_PKG=server-jre-8u152-windows-x64.tar.gz \
    JAVA_HOME=C:\\jdk1.8.0_152 \
    # KEYCLOAK_PKG=keycloak-3.4.2.Final/ \
    # KEYCLOAK_HOME=C:\\keycloak-3.4.2 \
    OPENDJ_PKG=opendj-3.0.1/ \
    OPENDJ_HOME=C:\\opendj-3.0.1

ADD $JAVA_PKG /
# ADD $KEYCLOAK_PKG $KEYCLOAK_HOME
ADD $OPENDJ_PKG $OPENDJ_HOME
# RUN setx /M PATH %PATH%;%JAVA_HOME%\bin
