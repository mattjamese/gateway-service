FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} gateway-service.jar
ENTRYPOINT ["java","-jar","/gateway-service.jar"]
EXPOSE 8765