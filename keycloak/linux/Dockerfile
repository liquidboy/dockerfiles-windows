FROM jboss/keycloak:3.4.2.Final

ENV KEYCLOAK_VERSION 3.4.2.Final-gl1
RUN cd /opt/jboss/ && curl -L https://github.com/Aconex/keycloak/releases/download/v3.4.2.Final-gl1/keycloak-$KEYCLOAK_VERSION.tar.gz | tar zx && yes | cp -rf /opt/jboss/keycloak-$KEYCLOAK_VERSION /opt/jboss/keycloak


ENV JBOSS_HOME /opt/jboss/keycloak
ENV LANG en_US.UTF-8

EXPOSE 8080

ENTRYPOINT [ "/opt/jboss/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]