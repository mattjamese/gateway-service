FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/gateway-service-0.1.jar gateway-service.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/gateway-service.jar"]
EXPOSE 8765