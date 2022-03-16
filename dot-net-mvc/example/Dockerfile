FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine as builder
WORKDIR app/
COPY . .
RUN dotnet dev-certs https
RUN dotnet publish -c Release --use-current-runtime --self-contained true -o /app/built

FROM mcr.microsoft.com/dotnet/runtime:6.0-alpine
WORKDIR app/
COPY --from=builder /app/built/ .
CMD dotnet dot-net-mvc.dll --urls="http://*:8007"
