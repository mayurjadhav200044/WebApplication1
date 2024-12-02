FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base

# Set the working directory inside the container
WORKDIR /app

# Copy the published application from the build directory (published folder)
FROM base AS final
COPY bin/Release/net8.0/ /app/

# Expose the port that the application will listen on (default for ASP.NET Core is 80)
EXPOSE 5000

# Set the environment variable for ASP.NET Core to run the app
ENV ASPNETCORE_URLS=http://0.0.0.0:5000

# Define the entry point to run the application
ENTRYPOINT ["dotnet", "WebApplication1.dll"]
