FROM microsoft/aspnetcore-build:1.1

RUN mkdir /app
WORKDIR /app
ADD . .

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

EXPOSE 80/tcp
RUN chmod +x ./entrypoint.sh
CMD /bin/bash ./entrypoint.sh