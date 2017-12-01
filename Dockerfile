FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /build/libs/jalgoarena-submissions-1.1.0.jar app.jar
EXPOSE 5003
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=dev","-jar","/app.jar"]