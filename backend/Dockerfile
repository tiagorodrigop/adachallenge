FROM openjdk:11-jre-slim
WORKDIR /app
COPY app/target/* /app/backend.jar
CMD ["java", "-jar", "/app/backend.jar"]
