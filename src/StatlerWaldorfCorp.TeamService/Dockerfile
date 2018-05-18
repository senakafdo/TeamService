FROM microsoft/dotnet:2.0.0-sdk AS build-env
WORKDIR /app

# copy csproj and restore as distinct layers
COPY src/*.csproj ./
RUN dotnet restore

# copy everything else and build
COPY src/. ./
RUN dotnet publish

# build runtime image
FROM microsoft/dotnet:2.0.0-sdk
WORKDIR /app
COPY --from=build-env /app/publish .
ENTRYPOINT ["/app/docker_entrypoint.sh"]
