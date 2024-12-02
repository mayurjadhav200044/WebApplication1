# Use the official .NET runtime image for the final stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 5000

# Copy the published application from the build directory (published folder)
FROM base AS final
COPY bin/Release/net8.0/publish/ /app/

# Set the environment variable for the port and run the application
ENV ASPNETCORE_URLS=http://0.0.0.0:5000
ENTRYPOINT ["dotnet", "WebApplication1.dll"]
