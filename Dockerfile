FROM maven:3.9.9-eclipse-temurin-23 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src

FROM eclipse-temurin:23-jdk
WORKDIR /usr/src/myapp

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springboot-images-new.jar"]
