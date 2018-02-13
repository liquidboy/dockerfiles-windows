FROM jose/servercore-1709/postgresql:latest

ENV ORLEANS_PKG=orleans/ \
    ORLEANS_HOME=C:\\orleans

ADD $ORLEANS_PKG $ORLEANS_HOME

# temporarily setting the postgres password to a debug one for development
RUN setx /M PGPASSWORD Password123