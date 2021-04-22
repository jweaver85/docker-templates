FROM adoptopenjdk/openjdk11:jdk-11.0.10_9-alpine
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]