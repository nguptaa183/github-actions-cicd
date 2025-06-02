# Use OpenJDK 17 as the base image
FROM openjdk:17

# Expose port 8080
EXPOSE 8080

# Add the JAR file to the container
ADD target/github-actions-cicd-test-java.jar github-actions-cicd-test-java.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/github-actions-cicd-test-java.jar"]
