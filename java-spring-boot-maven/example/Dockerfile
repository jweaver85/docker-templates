FROM adoptopenjdk/maven-openjdk11:latest as builder
COPY . .
RUN mvn install

FROM adoptopenjdk/openjdk11:jdk-11.0.10_9-alpine
COPY --from=builder target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
