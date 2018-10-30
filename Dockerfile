FROM openjdk:8-jre-alpine
VOLUME /tmp
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
RUN ["mv", "/usr/lib/jvm/java-1.8-openjdk/jre/lib/amd64/jli/libjli.so", "/lib"]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]