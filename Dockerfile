# build runtime image
FROM microsoft/dotnet:2.0.0-runtime
WORKDIR /app
COPY /src/StatlerWaldorfCorp.TeamService/publish .
ENTRYPOINT dotnet StatlerWaldorfCorp.TeamService.dll --server.urls=http://0.0.0.0:${PORT-"8080"}
