# Use an OpenJDK base image
FROM lolhens/baseimage-openjre

# Set the working directory in the container
WORKDIR /app

# Copy the Java application JAR file into the container
COPY target/springbootApp.jar springbootApp.jar
EXPOSE 8085

# Command to run the Java application
CMD ["java", "-jar", "springbootApp.jar"]
