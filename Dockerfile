# You can change this base image to anything else
# But make sure to use the correct version of Java
# Use a slim Java runtime base image
FROM eclipse-temurin:17-jdk-alpine

# Set the artifact location (optional override)
ARG artifact=target/spring-boot-web.jar

# Set working directory inside container
WORKDIR /opt/app

# Copy JAR file into the container
COPY ${artifact} app.jar

# Expose the port your app runs on (update if different)
EXPOSE 8089

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
