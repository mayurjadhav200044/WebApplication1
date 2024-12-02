# Use the official .NET runtime image for the final stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

# Copy the published application from the build directory (published folder)
FROM base AS final
COPY ./bin/Release/net8.0/publish/ /app/

# Set entrypoint to run the application
ENTRYPOINT ["dotnet", "WebApplication1.dll"]
