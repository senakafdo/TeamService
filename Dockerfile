# build development image
FROM microsoft/dotnet:2.0.3-sdk
WORKDIR /app
COPY /src/StatlerWaldorfCorp.TeamService .
ENTRYPOINT dotnet publish/StatlerWaldorfCorp.TeamService.dll --server.urls=http://0.0.0.0:${PORT-"8080"}

# build runtime image
#FROM microsoft/dotnet:2.0.0-runtime
#WORKDIR /app
#COPY /src/StatlerWaldorfCorp.TeamService/publish .
#ENTRYPOINT dotnet StatlerWaldorfCorp.TeamService.dll --server.urls=http://0.0.0.0:${PORT-"8080"}
