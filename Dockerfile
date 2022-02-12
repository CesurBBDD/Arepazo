#FROM microsoft/mssql-server-linux
FROM mcr.microsoft.com/mssql/server
COPY ./Create_database.sql .
COPY ./entrypoint.sh .
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=12345Ab##
CMD /bin/bash ./entrypoint.sh

