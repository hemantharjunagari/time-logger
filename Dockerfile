# Stage 1: Build the application
FROM maven:3.8.5-openjdk-11 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy the source code into the container
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/time-logger-1.0-SNAPSHOT.jar /app/time-logger-1.0-SNAPSHOT.jar

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "time-logger-1.0-SNAPSHOT.jar"]