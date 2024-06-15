FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/spring-security-jwt-0.0.1-SNAPSHOT.jar /app/spring-security-jwt-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/spring-security-jwt-0.0.1-SNAPSHOT.jar"]