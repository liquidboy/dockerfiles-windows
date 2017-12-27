FROM microsoft/windowsservercore:1709

ENV JAVA_PKG=server-jre-8u152-windows-x64.tar.gz \
    JAVA_HOME=C:\\jdk1.8.0_152 \
    OPENDJ_PKG=opendj-3.0.1/ \
    OPENDJ_HOME=C:\\ldap\\opendj \
    LDAP_PKG=ldap/ \
    LDAP_HOME=C:\\ldap

ADD $JAVA_PKG /
ADD $OPENDJ_PKG $OPENDJ_HOME
ADD $LDAP_PKG $LDAP_HOME

RUN setx /M PATH %PATH%;%JAVA_HOME%\bin

# keep this container running forever because it runs services  https://stackoverflow.com/questions/25775266/how-to-keep-docker-container-running-after-starting-services
# ENTRYPOINT ["tail", "-f", "/dev/null"]

# keep container running and command showing  https://stackoverflow.com/questions/36206906/docker-how-to-execute-a-batch-file-when-container-starts-and-keep-the-user-in-c
# CMD c:\ldap\dev\install_opendj.bat && cmd
