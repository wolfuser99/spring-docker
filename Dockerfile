FROM openjdk:8-jre-alpine
VOLUME /tmp
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["sh","java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]