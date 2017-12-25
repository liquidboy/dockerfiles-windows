FROM microsoft/nanoserver-insider:latest

ENV JAVA_PKG=jdk1.8.0_152 \
    JAVA_HOME=C:\\jdk1.8.0_152 \
    KEYCLOAK_PKG=keycloak-3.4.2.Final/ \
    KEYCLOAK_HOME=C:\\keycloak-3.4.2

ADD $JAVA_PKG $JAVA_HOME
ADD $KEYCLOAK_PKG $KEYCLOAK_HOME

# RUN setx /M PATH %PATH%;%JAVA_HOME%\bin
