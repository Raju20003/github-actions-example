# ---- Build Stage ----
FROM maven:3.9.9-eclipse-temurin-23 AS build
WORKDIR /app

# Copy pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the application (skip tests for faster builds)
RUN mvn clean package -DskipTests

# ---- Run Stage ----
FROM eclipse-temurin:23-jdk
WORKDIR /usr/src/myapp

# Copy the built JAR from the build stage
COPY --from=build /app/target/springboot-imagees-new.jar springboot-images-new.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "springboot-images-new.jar"]