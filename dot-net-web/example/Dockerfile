FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine as builder
WORKDIR app/
COPY . .
RUN dotnet dev-certs https
#RUN dotnet build
#RUN dotnet publish --sc --use-current-runtime -o /app/built
RUN dotnet publish -c Release --use-current-runtime --self-contained true -o /app/built
#RUN dotnet built/dot-net-web.dll

FROM mcr.microsoft.com/dotnet/runtime:6.0-alpine
WORKDIR app/
COPY --from=builder /app/built/ .
#CMD dotnet run
CMD dotnet dot-net-web.dll
#CMD sh dot-net-web




