FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY RSWEBProject/*.csproj .
RUN dotnet restore

# Copy everything else and build website
COPY RSWEBProject/. .
RUN dotnet publish -c release -o /WebApp --no-restore

# Final stage / image
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /WebApp
COPY --from=build /WebApp ./
ENTRYPOINT ["dotnet", "RSWEBProject.dll"]