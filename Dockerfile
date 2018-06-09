FROM microsoft/dotnet-nightly:2.1-runtime-alpine

MAINTAINER inSreeMan@gmail.com 

# Copy app to /src.
COPY . /src

WORKDIR /src

EXPOSE 8080

ENV ASPNETCORE_URLS http://*:8080

#RUN dotnet build src/dotnet-core-hello-world.csproj -c Release

CMD [ "dotnet", "run" ]